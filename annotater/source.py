import uuid
import subprocess
import os
import shutil
import tempfile
from assembly import Assembly
from error import compile_error

class Source:
    def __init__(self, filename):
        self.filename = filename
        
    def compile(self, optimisation):
        """
        Compile this source file in it's current form
        """
        output: str = uuid.uuid4().hex + ".s"

        try:
            compile = subprocess.Popen(['clang', self.filename, '-S', '-O' + str(optimisation), '-o', output], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        except FileNotFoundError:
            compile_error("Command line tool 'clang' is not installed on this device or cannot be found")

        stdout, stderr = compile.communicate()
        if (stderr):
            compile_error(stderr)

        assembly = Assembly.fromfilename(output)
        os.remove(output)
        return assembly

    def clone(self):
        """
        Clone this source file and return a new file location
        """
        self.copy_filename = "temp/" + uuid.uuid4().hex + ".c"
        shutil.copyfile(self.filename, self.copy_filename)