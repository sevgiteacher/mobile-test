Feature: Testing apk

  Background: App Preset
    * configure driver = { type: 'android', webDriverPath : "/wd/hub", start: false, httpConfig : { readTimeout: 120000 }}

  Scenario: Secured Term Basic Business Loan Process
    Given driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }
    * delay(2000)

    * match text('#com.android.chrome:id/title') == "Welcome to Chrome"
    * click('#com.android.chrome:id/terms_accept')
    * delay(3000)
    * match text('#com.android.chrome:id/signin_title') == 'Turn on sync?'
    * click('#com.android.chrome:id/negative_button')
    * delay(3000)
    * input('#com.android.chrome:id/search_box_text', 'amazon')
    * delay(3000)
    * click('#com.android.chrome:id/line_2')
    * delay(3000)
    * click('@More options')
    * delay(3000)
    * click('@Help & feedback')
    * delay(3000)
    * waitFor('#com.google.android.gms:id/product_name')
    * click('#com.google.android.gms:id/gh_feedback_option')
    * delay(3000)
    * input('#com.google.android.gms:id/gf_issue_description', 'Good job :)'
    * delay(3000)
    * match text('#com.google.android.gms:id/gf_issue_description') == 'Good job :)'
    * screenshot()
    * def A = text('#com.google.android.gms:id/gf_issue_description')
    * print A

