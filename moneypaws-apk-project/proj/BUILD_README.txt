MoneyPaws -> APK (debug/testing)

Option A (command line): install JDK 17 + Android SDK, set ANDROID_HOME, then run ./build.sh
Option B (Android Studio): run `npm install && npx cap add android && npx cap sync`,
  then `npx cap open android` and Build > Build APK(s).

Your site files are in www/. Edit them, run `npx cap sync android`, rebuild.
Install on phone: copy app-debug.apk over and allow "install unknown apps",
or `adb install app-debug.apk`.
