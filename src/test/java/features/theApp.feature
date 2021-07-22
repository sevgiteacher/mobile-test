Feature: Testing apk

  Background: App Preset
    * configure driver = { type: 'android', webDriverPath : "/wd/hub", start: false, httpConfig : { readTimeout: 120000 }}

    Given driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }
    * delay(2000)

#    * driver.script("mobile: scroll",JSON.stringify({direction: "down"}))
#    * driver.script(execute('mobile: scroll', {direction: 'down'}))
#    * driver.executeScript("mobile: scroll", ("direction", "down"))
#   * driver.script("mobile: scroll", { "direction" : "down"})

  Scenario: User goes to Echo Box (input,click methods)
    * click('@Echo Box')
    * waitFor("@messageSaveBtn")
    * input('@messageInput', 'Hello')
    * click('@messageSaveBtn')
    * match text('@Hello') == 'Hello'
    * back()

  Scenario: User goes to Login Screen (input,click,match methods)
    * click('@Login Screen')
    * waitFor("@loginBtn")
    * input('@username', 'Jo')
    * delay(2000)
    * input('@password', '123456')
    * click('@loginBtn')
    * delay(2000)
    * match text('#android:id/alertTitle') == 'Alert'
    * match text('#android:id/message') == 'Invalid login credentials, please try again'
    * click('#android:id/button1')
    * delay(2000)
    * back()

  Scenario: User goes to Clipboard Demo
    * click('@Clipboard Demo')
    * waitFor("@setClipboardText")
    * input('@messageInput', 'write')
    * click('@setClipboardText')
    * delay(2000)
    * click('@refreshClipboardText')
    * delay(2000)
    * match text('@write') == 'write'
    * delay(2000)
    * back()

  Scenario: User goes to Webview Demo
    * click('@Webview Demo')
    * waitFor("@clearBtn")
    * input('@urlInput', 'http://wilko.com')
    * click('@navigateBtn')
    * match text('#android:id/alertTitle') == 'Alert'
    * match text('#android:id/message') == 'Sorry, you are not allowed to visit that url'
    * click('#android:id/button1')
    * delay(2000)
    * click('@clearBtn')
    * back()

  Scenario: User goes to List Demo (scroll method)
    * click("@List Demo")
    * waitFor("@Altocumulus")
    * driver.script("mobile: scroll", { "strategy" : "accessibility id", "selector": "Stratus"})
    * delay(2000)
    * click('@Stratus')
    * match text('#android:id/alertTitle') == 'Your Cloud Selection'
    * click('#android:id/button2')
    * delay(2000)
    * back()






