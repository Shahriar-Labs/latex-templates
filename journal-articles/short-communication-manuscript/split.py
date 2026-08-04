import os

with open("main.tex", "r") as f:
    content = f.read()

parts = content.split("%%FILE: ")
files = {}
for part in parts:
    if not part.strip():
        continue
    lines = part.split("\n")
    filepath = lines[0].strip()
    filecontent = "\n".join(lines[1:])
    files[filepath] = filecontent

for filepath, filecontent in files.items():
    dirpath = os.path.dirname(filepath)
    if dirpath:
        os.makedirs(dirpath, exist_ok=True)
    with open(filepath, "w") as f:
        f.write(filecontent)

print("Split completed successfully.")
