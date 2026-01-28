Feature: Upload file using own HTML page

Scenario: User uploads a file using custom HTML page
    * configure driver = { type: 'chrome' }

    * def html = karate.toAbsolutePath('classpath:resources/upload.html')
    * driver 'file:' + html

    # Wait until input exists
    * waitFor('#fileInput')

    # Upload file
    * input('#fileInput', 'classpath:test-inputs/log.txt')

    * click('button')
    * match text('#status') contains 'File selected successfully'
    * screenshot()
