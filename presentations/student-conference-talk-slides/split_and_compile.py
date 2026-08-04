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
        
        # Strip code fences if they exist
        if body.strip().startswith("```"):
            body_lines = body.strip().split("\n")
            if body_lines[0].startswith("```"):
                body_lines = body_lines[1:]
            if body_lines[-1] == "```":
                body_lines = body_lines[:-1]
            body = "\n".join(body_lines)
            
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
        if os.path.exists("main.log"):
            with open("main.log", "r") as logf:
                print("LOG TAIL:")
                print("".join(logf.readlines()[-100:]))
    else:
        print("LaTeX compilation Succeeded!")
        
if __name__ == "__main__":
    main()
