#! /usr/bin/env python3

"""
This script is used to pre-compile all .py files from the current working
directory into .pyc files.
This may require root privileges if run inside system directories.
"""

import compileall,os

pwd = os.getcwd()
compileall.compile_dir(pwd, force=True)
