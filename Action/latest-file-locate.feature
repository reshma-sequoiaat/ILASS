    #************ Locate latest one file and search for text *****************************************************************

    Feature: Locate and search latest file

    Scenario: Find latest txt file in test-inputs and search for text

      * def folderPath = 'test-inputs'
      * def searchWord = 'RunEnd'
      * def File = Java.type('java.io.File')
      * def dir = new File(folderPath)
      * def files = dir.listFiles()
      * def filter = function(f){ return f.getName().endsWith('.txt') }
      * def txtFiles = karate.filter(files, filter)
      * def Collections = Java.type('java.util.Collections')
      * def Comparator = Java.type('java.util.Comparator')
      * eval Collections.sort(txtFiles, Comparator.comparingLong(function(f){ return f.lastModified() }).reversed())
      * def latestFile = txtFiles[0].getName()
      * print 'The latest file found is:', latestFile
      * def fileContent = read('file:' + folderPath + '/' + latestFile)
      * match fileContent contains searchWord
      * print 'Success: Found the word in the latest file.'


    #*****************************************************************************************************************************

Feature: Find text inside txt files

Scenario: Search word or sentence in txt files
    * def folderPath = 'test-inputs'
    * def searchText = 'Process run successfully'
    * def File = Java.type('java.io.File')
    * def folder = new File(folderPath)
    * def allFiles = folder.listFiles()
    * def txtFiles =
    """
    karate.filter(allFiles, function(f){
        return f.isFile() && f.getName().endsWith('.txt')
    })
    """
    * def matchedFiles =
    """
    karate.filter(txtFiles, function(f){
        var path = 'file:' + f.getAbsolutePath();
        var content = karate.readAsString(path);
        return content.contains(searchText);
    })
    """
    * print 'Matched files:', matchedFiles

