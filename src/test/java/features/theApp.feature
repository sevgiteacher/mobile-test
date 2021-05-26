Feature: Testing apk

  Background: App Preset
    * configure driver = { type: 'android', webDriverPath : "/wd/hub", start: false, httpConfig : { readTimeout: 120000 }}

  Scenario: Secured Term Basic Business Loan Process
    Given driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }
    * delay(2000)

    * click('@Echo Box')
    * delay(2000)
    * input('@messageInput', 'Hello')
    * click('@messageSaveBtn')
    * delay(2000)
    * match text('@Hello') == 'Hello'
    * back()
    * click('@Login Screen')
    * delay(2000)
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
    * click('@Clipboard Demo')
    * input('@messageInput', 'write')
    * click('@setClipboardText')
    * delay(2000)
    * click('@refreshClipboardText')
    * delay(2000)
    * match text('@write') == 'write'
    * delay(2000)
    * back()
    * click('@Webview Demo')
    * input('@urlInput', 'http://wilko.com')
    * match text('#android:id/alertTitle') == 'Alert'
    * match text('#android:id/message') == 'Sorry, you are not allowed to visit that url'
    * click('#android:id/button1')
    * delay(2000)
    * click('@clearBtn')
    * back()
    * click('@List Demo')
    * click('@Cirrus')
    * delay(2000)
    * match text('#android:id/alertTitle') == 'Your Cloud Selection'
    * click('#android:id/button3')
    * delay(2000)
    * match text('#android:id/message') == 'This is a high-level cirriform mostly non-convective cloud'
    * click('#android:id/button1')
    * delay(2000)
    * back()
    * click('@Picker Demo')
    * click('@monthPicker')
    * click('/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[3]')
    * click('@dayPicker')
    * click('/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[9]')
    * click('@learnMore')
    * delay(2000)
    * click('#android:id/button1')
    * delay(2000)
    * back()



