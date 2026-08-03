import os
import subprocess

def main():
    with open("main.tex", "r") as f:
        content = f.read()
    
    parts = content.split("%%FILE: ")
    files = {}
    for part in parts:
        if not part.strip():
            continue
        lines = part.split("\n")
        path = lines[0].strip()
        body = "\n".join(lines[1:])
        files[path] = body
        
    for path, body in files.items():
        dir_name = os.path.dirname(path)
        if dir_name and not os.path.exists(dir_name):
            os.makedirs(dir_name)
        with open(path, "w") as f:
            f.write(body)
            
    print("Files split successfully!")
    
    # Run latexmk
    print("Compiling LaTeX...")
    res = subprocess.run(["latexmk", "-pdf", "main.tex"], capture_output=True, text=True)
    if res.returncode != 0:
        print("LaTeX compilation failed!")
        print("STDOUT:", res.stdout)
        print("STDERR:", res.stderr)
        # Try to read main.log to help debug
        if os.path.exists("main.log"):
            with open("main.log", "r") as logf:
                print("LOG TAIL:")
                print("".join(logf.readlines()[-50:]))
        return
    else:
        print("LaTeX compilation Succeeded!")
        
    # Run pdftoppm
    print("Generating preview image...")
    res = subprocess.run(["pdftoppm", "-png", "-r", "150", "-f", "1", "-l", "1", "main.pdf", "preview"], capture_output=True, text=True)
    if os.path.exists("preview-1.png"):
        os.rename("preview-1.png", "preview.png")
        print("Preview generated successfully!")
    else:
        print("Preview generation failed!", res.stderr)

if __name__ == "__main__":
    main()
