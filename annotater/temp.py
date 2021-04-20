from pathlib import Path
import shutil
import uuid
from os.path import join

def temp_file_name(extension="c"):
    return join("temp", uuid.uuid4().hex + "." + extension)

def create_temp_folder():
    temp = Path("temp")
    temp.mkdir(parents=True, exist_ok=True)


def cleanup_temp_folder():
    shutil.rmtree("temp")