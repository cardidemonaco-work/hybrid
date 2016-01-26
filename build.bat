rem MUST MAKE SURE YOU ARE IN THE CORRECT DIRECTORY BEFORE RUNNING THIS
rem Correct directory is \PROJECT\BRANCH\

rem Apache Cordova project
rem C:\Projects\hybrid\trunk\hybrid

rem www Source
rem C:\Projects\hybrid\trunk\hybrid\www

rem Cordova
rem C:\Projects\hybrid\trunk\node_modules\cordova\bin\cordova build

rem Prerequisites
rem node installed and on the path
rem Android SDK installed (currently 22)

rem ===

rem Apache Cordova build
cd "hybrid" 

rem Create Android Debug build
call ..\node_modules\cordova\bin\cordova build android 

rem Create Android Production build
rem ..\node_modules\cordova\bin\cordova build android --release

cd ..\

rem Dynatrace Instrumentation... send to 6.2 Server cd-dt-0602-win
cd "dynatrace-mobile-adk-6.2.5.1006\Android\auto-instrumentor" 

rem Create Dynatrace-instrumented Debug build
call instrument.cmd apk="..\..\..\hybrid\platforms\android\build\outputs\apk\android-debug.apk" prop="APK-Instr.properties" 

rem Complete!!!
rem Final APK here: C:\Projects\hybrid\trunk\hybrid\platforms\android\build\outputs\apk\android-debug\dist
rem Final APK here relative: ..\..\..\hybrid\platforms\android\build\outputs\apk\android-debug\dist