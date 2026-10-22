#!/usr/bin/env bash
# Builds a debug APK. Requires: Node 18+, JDK 17, Android SDK (ANDROID_HOME set).
set -e
npm install
[ -d android ] || npx cap add android
npx cap sync android
cd android && ./gradlew assembleDebug
echo
echo "APK: $(pwd)/app/build/outputs/apk/debug/app-debug.apk"
