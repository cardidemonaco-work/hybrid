rem Apache Cordova documentation
rem https://cordova.apache.org/docs/en/latest/guide/cli/index.html

rem MUST MAKE SURE YOU ARE IN THE CORRECT DIRECTORY BEFORE RUNNING THIS
rem Correct directory is \PROJECT\BRANCH\

rem Install NPM
npm install cordova

rem Create Apache Cordova project
cordova create hybrid com.cardidemonaco.hybrid "Dynatrace Hybrid App"

rem Add Android Platform
cd hybrid
cordova platform add android

rem Run the Cordova Build... switch to build.bat
