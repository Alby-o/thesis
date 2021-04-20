from temp import cleanup_temp_folder

def compile_error(message: str):
    """
    Print a compile error and exit the program
    """
    print("Error compiling file")
    print(message)
    cleanup_temp_folder()
    exit(1)