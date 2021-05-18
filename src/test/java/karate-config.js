function fn() {
  var config = {}
  var android = {}
  var ios = {}


  android["desiredConfig"] = {
        "platformName": "Android",
        "platformVersion": "11",
        "deviceName": "Pixel 29",
//        "appPackage": "com.google.android.calculator",
        "appPackage": "com.android.chrome",
        "automationName": "UiAutomator2",
//        "appActivity": "com.android.calculator2.Calculator",
        "appActivity": "com.google.android.apps.chrome.IntentDispatcher",
 }



 config["android"] = android
   config["ios"] = ios
   return config;

}
