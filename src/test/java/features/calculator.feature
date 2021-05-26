Feature: Testing apk

  Background: App Preset
    * configure driver = { type: 'android', webDriverPath : "/wd/hub", start: false, httpConfig : { readTimeout: 120000 }}

  Scenario: Secured Term Basic Business Loan Process
    Given driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }
    * delay(2000)

    * click('#com.google.android.calculator:id/digit_7')
    * click('@multiply')
    * click("#com.google.android.calculator:id/digit_9")
    * click('@equals')
    * match text('#com.google.android.calculator:id/result_final') == '63'
    * delay(2000)


