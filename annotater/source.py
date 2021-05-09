import subprocess
import shutil
from assembly import Assembly
from error import compile_error
from temp import temp_file_name
from wpif import Wpif

class Source:
    def __init__(self, filename):
        self.filename = filename
        self.data = None
        
    def compile(self, optimisation):
        """
        Compile this source file in it's current form
        """
        output = temp_file_name("s")

        try:
            compile = subprocess.Popen(['clang', self.filename, '-S', '-O' + str(optimisation), '-o', output], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        except FileNotFoundError:
            compile_error("Command line tool 'clang' is not installed on this device or cannot be found")

        stdout, stderr = compile.communicate()
        if (stderr):
            compile_error(stderr)
        
        try:
            assembly = Assembly.fromfilename(output)
        except FileNotFoundError:
            compile_error("Assembly file could not be found after compiling")
        return assembly

    def clone(self):
        """
        Clone this source file and return a new Source object
        """
        copy_filename = temp_file_name()
        copy = shutil.copy(self.filename, copy_filename)
        print(copy)

        return Source(copy_filename)

    def transpile(self):
        file = open(self.filename, 'r')
        self.data = file.readlines()
        wpif_identifier = "wpif: "
        for i, line in enumerate(self.data):
            if wpif_identifier in line:
                wpif = Wpif(line.split(wpif_identifier)[1], 0)
                result = wpif.transform()
                self.data[i] = result
        file.close()
        file = open(self.filename, 'w')
        file.writelines(self.data)
        file.close()
        
