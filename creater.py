def write_text(file, text):
    with open(file, "w") as f:
        f.write(text)


def write_new_text(file1, file2):
    with open(file1, "r") as f1:
        text = f1.read()
        with open(file2, "w") as f2:
            f2.write(text)
