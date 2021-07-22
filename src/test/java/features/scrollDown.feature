Feature: Testing apk

  Background: App Preset
    * configure driver = { type: 'android', webDriverPath : "/wd/hub", start: false, httpConfig : { readTimeout: 120000 }}

  Scenario: android mobile app UI tests
    Given driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }
 #   * driver.startRecordingScreen()
    * delay(2000)
    And driver.optional('@Views').click()
    * delay(2000)
    And driver.script("mobile: scroll", { "strategy" : "accessibility id", "selector": "Lists"})
    * delay(2000)
 #   And driver.optional('@Lists').click()
    * click('@Lists')
    * delay(2000)
    And driver.script("mobile: scroll", { "strategy" : "accessibility id", "selector": "17. Activate items"})
    * delay(2000)
    And driver.optional('@17. Activate items').click()
    * delay(2000)
    And driver.script("mobile: scroll", { "strategy" : "-android uiautomator", "selector": ".text(\"Blue\").className(\"android.widget.TextView\")"})
    * delay(2000)
    And driver.optional("-.text(\"Blue\").className(\"android.widget.TextView\")").click()
    * delay(2000)
 #   * driver.saveRecordingScreen("CreateAccount.mp4",true)
