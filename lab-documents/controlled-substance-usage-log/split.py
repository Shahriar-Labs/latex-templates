import os

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
        
        # Strip markdown fenced code blocks if present
        body = body.strip()
        if body.startswith("```latex"):
            body = body[len("```latex"):].strip()
        elif body.startswith("```bibtex"):
            body = body[len("```bibtex"):].strip()
        elif body.startswith("```"):
            body = body[3:].strip()
            
        if body.endswith("```"):
            body = body[:-3].strip()
            
        files[path] = body
        
    for path, body in files.items():
        dir_name = os.path.dirname(path)
        if dir_name and not os.path.exists(dir_name):
            os.makedirs(dir_name)
        with open(path, "w") as f:
            f.write(body + "\n")
            
    print("Files split successfully!")

if __name__ == "__main__":
    main()
