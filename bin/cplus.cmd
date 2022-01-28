set PATH=C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;
set PATH=C:\WINDOWS\System32\OpenSSH\;C:\Program Files\Git\cmd;%PATH%
REM set PATH=C:\Program Files\Microsoft VS Code\bin;%PATH%
REM set PATH=C:\Strawberry\c\bin;C:\Strawberry\perl\site\bin;;%PATH%
set PATH=C:\Strawberry\perl\bin;%PATH%
REM set PATH=C:\Program Files\dotnet\;C:\Program Files\Microsoft SQL Server\130\Tools\Binn\;%PATH%
set PATH=C:\Program Files\cmake\cmake-3.17.2-win64-x64\bin;%PATH%
set PATH=C:\Program Files\NASM;%PATH%
REM set PATH=C:\Users\stefan\AppData\Local\Programs\Python\Python39\python.exe;%PATH%
set PATH=C:\Users\stefan\AppData\Local\Microsoft\WindowsApps;%PATH%
set PATH=C:\Users\stefan\.dotnet\tools;%PATH%

REM ==== JAVA ====

REM set PATH=C:\Program Files\Amazon Corretto\jdk16.0.2_7\bin;
REM set PATH=C:\Program Files (x86)\Common Files\Oracle\Java\javapath;

set PATH=C:\Program Files\Java\jdk1.8.0_281\bin;C:\Program Files\Java\jdk1.8.0_281\jre\bin;C:\Program Files\Java\jdk1.8.0_281\jre\bin\server;%PATH%
set JAVA_HOME=C:\Progra~1\Java\jre1.8.0_291

REM == change dir ==

mkdir c:\Daten\git\seceda\abs-rss-cpl\nmake
cd c:\Daten\git\seceda\abs-rss-cpl\nmake



REM Hier dazu fuer eclipse

REM -DABS_SDK_ROOT_PATH=c:/dev/allianz/abs-sdk-debug-nmake sollte gesetzt werden im Math Objekte 
REM -DABS_INSTALL_ROOT_FOLDER

REM set PATH c:\Progra~2\Micros~2\2017\Professional\VC\Tools\MSVC\14.16.27023\bin\Hostx64\x64;%PATH%
REM set PATH=c:\Progra~2\Micros~2\2017\Professional\SDK\ScopeCppSDK\SDK\bin;%PATH%

REM set LIB=c:\Progra~2\Micros~2\2017\Professional\SDK\ScopeCppSDK\SDK\lib
REM set LIB=c:\Progra~2\Micros~2\2017\Professional\VC\Tools\MSVC\14.16.27023\lib\x64\;%LIB%

REM (das ist 32-bit) start        c:\progra~2\micros~2\2017\professional\common7\tools\vsdevcmd.bat
%comspec% /k c:\progra~2\micros~2\2017\professional\VC\Auxiliary\Build\vcvars64.bat

REM nicht mit nmake: -DCMAKE_GENERATOR_PLATFORM=x64
REM cmake -G"Eclipse CDT4 - NMake Makefiles" -DCMAKE_BUILD_TYPE=Debug -DLOCAL_OUT_FOLDER=C:/dev/allianz/cpp_devkit_nmake_debug/ ..
REM cmake -G"Eclipse CDT4 - NMake Makefiles" -DCMAKE_BUILD_TYPE=Debug -DLOCAL_OUT_FOLDER=C:/dev/allianz/cpp_devkit_nmake_debug/ ..  -DCMAKE_VS_WINDOWS_TARGET_PLATFORM_VERSION=10.0.17763.0
REM start C:\Users\stefan\eclipse\cpp-2021-09\eclipse\eclipse.exe -data C:\Users\stefan\eclipse-workspace\seceda-cplusplus -showlocation c++-seceda

REM ZLIB SHA1
REM auskommentieren in C:\dev\CPP_DEVKIT_BUILD\zlib\CMakeList.txt
REM # URL_HASH SHA1=${URLHASHVALUE}

REM Cmake file in C:\dev\CPP_DEVKIT_BUILD\cryptopp\CMakeList.txt:
REM     # statt x64 original ${CMAKE_GENERATOR_PLATFORM}
REM     # statt 10.0.17763.0 
REM     set(CMAKE_GENERATOR_PLATFORM x64 )
REM     set(CMAKE_VS_WINDOWS_TARGET_PLATFORM_VERSION 10.0.17763.0 ) 
REM has to be amended by the platform set(CMAKE_GENERATOR_PLATFORM x64 ) this is not possible from the commandline

REM Test while installing the binaries have to be amended because master changes to main in git see in files from 
REM    C:\dev\CPP_DEVKIT_BUILD\build_nmake\gtest\cpp-devkit-build-gtest-prefix\tmp\cpp-devkit-build-gtest-gitclone.cmake
REM    C:\dev\CPP_DEVKIT_BUILD\build_debug\gtest\cpp-devkit-build-gtest-prefix\tmp\cpp-devkit-build-gtest-gitupdate.cmake
REM oder
REM in C:\dev\CPP_DEVKIT_BUILD\gtest\CMakeLists.txt
REM       add GIT_TAG main after GIT_REPOSITORY ${GTEST_GITHUB_URL}


REM MATH_CORE
REM cmake -G"Eclipse CDT4 - NMake Makefiles" ..  -DCMAKE_BUILD_TYPE=Debug -DLOCAL_CPP_DEVKIT=C:/dev/allianz/cpp_devkit_nmake_debug/ -DCMAKE_INSTALL_PREFIX=C:/dev/allianz/abs-sdk-debug-nmake 
REM Lib umbennenen C:\dev\allianz\cpp_devkit_nmake_debug\cpprestsdk-2.10.14\lib\cpprest_2_10d.lib in cpprest141_2_10d.lib

REM MATH_LIB
REM cmake -G"Eclipse CDT4 - NMake Makefiles" ../ABS_MATHLIFE/  -DCMAKE_BUILD_TYPE=Debug -DABS_SDK_ROOT_PATH=C:/dev/allianz/abs-sdk-debug/ -DABS_SDK_VERSION=21.0.305.35 -DCPP_DEVKIT_ROOT_PATH=c:/dev/allianz/cpp_devkit_debug/ -DCMAKE_INSTALL_PREFIX=c:/dev/allianz/math_life_seceda 
REM oder
REM cmake -G"Eclipse CDT4 - NMake Makefiles" ../ABS_MATHLIFE/  -DCMAKE_BUILD_TYPE=Debug -DABS_SDK_ROOT_PATH=C:/dev/allianz/abs-sdk-debug/ -DABS_SDK_VERSION=21.0.305.35 -DCPP_DEVKIT_ROOT_PATH=c:/dev/allianz/cpp_devkit_nmake_debug/ -DCMAKE_INSTALL_PREFIX=c:/dev/allianz/math_life_seceda_nmake
