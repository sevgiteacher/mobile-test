function fn() {
  var config = {}
  var android = {}
  var ios = {}


  android["desiredConfig"] = {
        "platformName": "Android",
        "platformVersion": "11",
        "deviceName": "Pixel 29",
        "automationName": "UiAutomator2",
//      for calculator
//        "appPackage": "com.google.android.calculator",
//        "appActivity": "com.android.calculator2.Calculator",

//      for theApp
       "appActivity": ".MainActivity",
         "appPackage": "io.cloudgrey.the_app"

//      for google chrome
//        "appPackage": "com.android.chrome",
//        "appActivity": "com.google.android.apps.chrome.Main",

//      for ApiDemos
//       "appActivity": ".ApiDemos",
//       "appPackage": "io.appium.android.apis"
 }



 config["android"] = android
   config["ios"] = ios
   return config;

}
