export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"
export IOS_SIMULATOR_HOME="$HOME/Library/Developer/CoreSimulator"
export IOS_BUILD_PATH="$HOME/Library/Developer/Xcode/DerivedData"

alias xcclean="xcodebuild clean"
alias xcrun-sim="xcrun simctl list devices"

echo "🍏 Entorno iOS activado (xcodebuild, xcrun simulators)"
