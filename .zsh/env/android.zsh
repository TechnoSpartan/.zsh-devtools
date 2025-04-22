### 🤖 Android SDK y herramientas
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$PATH"

### 🔧 Java (versión correcta para React Native)
export JAVA_HOME=$(/usr/libexec/java_home -v17)

alias avd="emulator -list-avds"
alias start-avd="emulator -avd"
alias adb-devices="adb devices"

echo "🤖 Entorno Android activado (emuladores, adb)"