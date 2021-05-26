Feature: Testing apk

  Background: App Preset
    * configure driver = { type: 'android', webDriverPath : "/wd/hub", start: false, httpConfig : { readTimeout: 120000 }}

  Scenario: Secured Term Basic Business Loan Process
    Given driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }
    * delay(2000)

    * match text('#com.android.chrome:id/title') == 'Welcome to Chrome'
    * click('#com.android.chrome:id/terms_accept')
    * delay(2000)
    * match text('#com.android.chrome:id/signin_title') == 'Turn on sync?'
    * click('#com.android.chrome:id/negative_button')
    * delay(2000)
    * input('#com.android.chrome:id/search_box_text', 'amazon')
    * delay(2000)
    * click('#com.android.chrome:id/line_2')
    * delay(2000)
    * click('@More options')
    * click('@Help & feedback')
    * delay(2000)
    * click('#com.google.android.gms:id/gh_feedback_option')
    * input('#com.google.android.gms:id/gf_issue_description', 'Hello')
    * delay(2000)



