@ignore
Feature: XML Data Processing

Scenario: Process and Print XML Data

    Given url "https://sample-files.com/downloads/data/xml/complex-nested.xml"
    When method get
    Then status 200
    * def xmlFile = response
    * def books = get xmlFile //book
    * def bookCount = karate.sizeOf(books)
    * print 'TOTAL BOOKS FOUND:', bookCount

    * def processor =
    """
    function(book, i) {
        var title = karate.xmlPath(book, "//title");
        var firstName = karate.xmlPath(book, "//author/name/first");
        var lastName = karate.xmlPath(book, "//author/name/last");
        var publisher = karate.xmlPath(book, "//publisher/name");
        
        var fullName = firstName + " " + lastName;
        
        karate.log('Book #' + (i + 1) + ': ' + title);
        karate.log('Author: ' + fullName);
        karate.log('Publisher: ' + publisher);
    }
    """
    
    * karate.forEach(books, processor)