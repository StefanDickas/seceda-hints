echo off

set PATH=C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;
set PATH=C:\WINDOWS\System32\OpenSSH\;C:\Program Files\Git\cmd;%PATH%
set PATH=C:\Program Files\Microsoft VS Code\bin;%PATH%
set PATH=C:\Strawberry\c\bin;C:\Strawberry\perl\site\bin;C:\Strawberry\perl\bin;C:\Program Files\dotnet\;C:\Program Files\Microsoft SQL Server\130\Tools\Binn\;%PATH%
set PATH=C:\Program Files\cmake\cmake-3.17.2-win64-x64\bin;%PATH%
set PATH=C:\Program Files\NASM;%PATH%
set PATH=C:\Users\stefan\AppData\Local\Programs\Python\Python39\python.exe;%PATH%
set PATH=C:\Users\stefan\AppData\Local\Microsoft\WindowsApps;%PATH%
set PATH=C:\Users\stefan\.dotnet\tools;%PATH%

REM ==== JAVA ====

REM set PATH=C:\Program Files\Amazon Corretto\jdk16.0.2_7\bin;
REM set PATH=C:\Program Files (x86)\Common Files\Oracle\Java\javapath;

set PATH=C:\Program Files\Java\jdk1.8.0_281\bin;C:\Program Files\Java\jdk1.8.0_281\jre\bin;C:\Program Files\Java\jdk1.8.0_281\jre\bin\server;%PATH%
set JAVA_HOME=C:\Progra~1\Java\jre1.8.0_291

REM == change dir ==

cd c:\dev

cmd 