Feature: Testing apk

  Background: App Preset
    * configure driver = { type: 'android', webDriverPath : "/wd/hub", start: false, httpConfig : { readTimeout: 120000 }}

  Scenario: Secured Term Basic Business Loan Process
    Given driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }
    * delay(2000)

    #Page Object Model
    * call read ('locators.json')

