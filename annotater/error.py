from temp import cleanup_temp_folder

def compile_error(message):
    """
    Print a compile error and exit the program
    """
    print("Error compiling file")
    print(message)
    cleanup_temp_folder()
    exit(1)

def copy_error(file):
    """
    Print a copy error and exit the program
    """
    print("Error copying file:", file)
    cleanup_temp_folder()
    exit(2)