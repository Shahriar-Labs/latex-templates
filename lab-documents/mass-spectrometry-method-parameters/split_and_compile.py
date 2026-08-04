import os
import re
import subprocess

def main():
    workspace = "/Users/shahriar/github/LetX_Temp/lab-documents/mass-spectrometry-method-parameters"
    main_tex_path = os.path.join(workspace, "main.tex")
    
    with open(main_tex_path, "r") as f:
        content = f.read()
    
    # Split content by %%FILE: <relative/path>
    parts = re.split(r'^%%FILE:\s*(\S+)\s*$', content, flags=re.MULTILINE)
    
    if len(parts) < 3:
        print("Error: Could not find %%FILE: sections.")
        return
    
    files = {}
    for i in range(1, len(parts), 2):
        filename = parts[i]
        file_content = parts[i+1].strip()
        files[filename] = file_content
    
    # Write files
    for filename, file_content in files.items():
        filepath = os.path.join(workspace, filename)
        os.makedirs(os.path.dirname(filepath), exist_ok=True)
        with open(filepath, "w") as f:
            f.write(file_content)
        print(f"Wrote {filename}")
        
    # Compile
    print("Compiling main.tex...")
    try:
        # Run pdflatex
        res1 = subprocess.run(["pdflatex", "-interaction=nonstopmode", "main.tex"], cwd=workspace, capture_output=True, text=True)
        print("pdflatex run 1 stdout tail:")
        print("\n".join(res1.stdout.splitlines()[-20:]))
        if res1.returncode != 0:
            print("pdflatex run 1 failed with return code:", res1.returncode)
            # Print full output or errors
            errors = [line for line in res1.stdout.splitlines() if line.startswith("!")]
            print("Errors found:\n", "\n".join(errors))
            return
            
        # Run bibtex
        res_bib = subprocess.run(["bibtex", "main"], cwd=workspace, capture_output=True, text=True)
        print("bibtex stdout:")
        print(res_bib.stdout)
        
        # Run pdflatex twice more
        subprocess.run(["pdflatex", "-interaction=nonstopmode", "main.tex"], cwd=workspace, capture_output=True)
        res_last = subprocess.run(["pdflatex", "-interaction=nonstopmode", "main.tex"], cwd=workspace, capture_output=True, text=True)
        
        if res_last.returncode == 0:
            print("SUCCESS! PDF compiled successfully.")
        else:
            print("pdflatex final run failed.")
            errors = [line for line in res_last.stdout.splitlines() if line.startswith("!")]
            print("Errors found:\n", "\n".join(errors))
            
    except Exception as e:
        print("An error occurred during compilation:", e)

if __name__ == "__main__":
    main()
