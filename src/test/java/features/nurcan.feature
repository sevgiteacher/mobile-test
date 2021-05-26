Feature: Testing apk

  Background: App Preset
    * configure driver = { type: 'android', webDriverPath : "/wd/hub", start: false, httpConfig : { readTimeout: 120000 }}

  Scenario: Secured Term Basic Business Loan Process
    Given driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }
    * delay(2000)

    * match text('#com.android.chrome:id/title') == 'Welcome to Chrome'
    * click('#com.android.chrome:id/terms_accept')
    * match text('#com.android.chrome:id/signin_title') == 'Turn on sync?'
    * delay(2000)
    * click('#com.android.chrome:id/negative_button')
    * delay(2000)
    * click('#com.android.chrome:id/search_box_text')
    * delay(2000)
    * input('#com.android.chrome:id/url_bar', 'amazon')
    * delay(2000)
    * click('#com.android.chrome:id/line_2')
    * delay(2000)
    * click('@More options')
    * delay(2000)
    * click('@Help & feedback')
    * delay(2000)
    * click('#com.google.android.gms:id/gh_feedback_option')
    * delay(2000)
    * input('#com.google.android.gms:id/gf_issue_description', 'good job:))')
    * delay(2000)



