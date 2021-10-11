#!/opt/python/3.9.1/bin/python3

import sys
import argparse
import json
import subprocess
import os
import shutil
import platform

def run_command_ext(command):
 print ('-- executing: ' + command)
 os.system(command)
 return

def output_all_apps():
 directory = "toolchains/"

 print("Available application configurations:")

 for file in os.listdir(directory):
  filename = os.fsdecode(file).split(".")[0]
  if filename.startswith("build-"): 
   # split the filename, get the configuration name
   config_name=filename.split("-",1)[1]
   print("- " + config_name)
   print("\tDebug: cmake_gen.py -b " + config_name + " Debug --force_clean" )
   print("\tRelease: cmake_gen.py -b " + config_name + " Release --force_clean" )
   continue
  else:
   continue

 return

def create_configuration( build, configuration, force ): 
 print("Building: " + build + ", configuration: " + configuration)
 os_short = {
  "Windows": "win",
  "Linux": "lx"
  }
 devkit_path = {
  "Windows" : {
   "Debug": "C:/dev/allianz/cpp_devkit_debug/",
   "Release": "C:/dev/allianz/cpp_devkit/"
  },
  "Linux" : {
   "Debug": "/opt/allianz/cpp-devkit-debug/",
   "Release": "/opt/allianz/cpp-devkit/"
  }
 }
 platform_parameter = {
  "Windows": "-A x64",
  "Linux": ""
  }

 build_dir= "build." + os_short[platform.system()] + "." + build + "." + configuration.lower()
 print ("Build dir is: " + build_dir)
 try:
  os.mkdir(build_dir)
 except FileExistsError as file_exists_error:
  if (force):
   print("deleting existing build dir: " + build_dir)
   shutil.rmtree(build_dir)
   os.mkdir(build_dir)
  else:
   print ("WARNING: build directory already exists, it will be reused. It is recommended to delete previous build dirs to avoid side effects due to cached values")
   print ("WARNING: invoke with --force-clean to delete the existing directory before building")
 os.chdir(build_dir)
 cmake_command="cmake " + platform_parameter[platform.system()] + " -DCMAKE_BUILD_TYPE=" + configuration + " -DLOCAL_CPP_DEVKIT=" + devkit_path[platform.system()][configuration] + " -DCMAKE_TOOLCHAIN_FILE=../toolchains/build-" + build + ".cmake .."
 print ("cmake command: " + cmake_command)
 run_command_ext(cmake_command)
 os.chdir("..")
 return

def main():
 parser = argparse.ArgumentParser("script for cmake build configurations")
 parser.add_argument('-b', '--build', nargs=2, metavar=('application','configuration'), help='the name of the application or application bundle to build and what configuration thereof')
 parser.add_argument('-l', '--list_available', help='output a list of available applications and application bundles', action="store_true")
 parser.add_argument('-f', '--force_clean', help='pass to force a deletion of existing build directory for the specified configuration', action="store_true")
 args = parser.parse_args()

 if len(sys.argv)==1:
  parser.print_help(sys.stderr)
  sys.exit(1)
 if (args.list_available):
  output_all_apps() 
 if (args.build and args.build):
  if (args.build[1] not in ['Debug', 'Release']):
   print('Syntax ERROR! unknown configuration: ' + args.build[1])
   print('valid values are: ["Debug", "Release"]')
   parser.print_help(sys.stderr)
   sys.exit(1)
  create_configuration(args.build[0], args.build[1], args.force_clean)


if __name__ == "__main__":
   main()

