# Feature: Find latest file 
#   Scenario: Locate latest file in a folder
#       * def folderPath = testInputsPath
#       * def File = Java.type('java.io.File')
#       * def dir = new File(folderPath)
#       * def files = dir.listFiles()
#       * def Collections = Java.type('java.util.Collections')
#       * def Comparator = Java.type('java.util.Comparator')
#       * eval Collections.sort(files, Comparator.comparingLong(function(f){ return f.lastModified() }).reversed())
#       * def latestFile = files[0].getName()
#       * print 'The latest file found is:', latestFile

#*****************************************************************************************************************************
    Feature: Locate and search latest file

    Scenario: Find latest txt file in test-inputs and search for text

      * def folderPath = testInputsPath
      * def searchWord = 'Process run successfully'
      * def File = Java.type('java.io.File')
      * def dir = new File(folderPath)
      * def allFiles = dir.listFiles()
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
        return content.contains(searchWord);
    })
    """
    * print 'Matched files:', matchedFiles
    * def Collections = Java.type('java.util.Collections')
    * def Comparator = Java.type('java.util.Comparator')
    * eval Collections.sort(txtFiles, Comparator.comparingLong(function(f){ return f.lastModified() }).reversed())
    * def latestFile = txtFiles[0].getName()
    * print 'The latest file found is:', latestFile
