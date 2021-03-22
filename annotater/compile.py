import subprocess
import os
from assembly import Assembly
from error import compile_error

def compile_source(filename: str, optimisation: int):
    output: str = "out.s"
    try:
        compile = subprocess.Popen(['clang', filename, '-S', '-O' + str(optimisation), '-o', output], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    except FileNotFoundError:
        compile_error("Command line tool 'clang' is not installed on this device or cannot be found")

    stdout, stderr = compile.communicate()
    if (stderr):
        compile_error(stderr)

    assembly = Assembly.fromfilename(output)
    delete_file(output)
    return assembly


def delete_file(output: str):
    os.remove(output)

