function fn() {
  var config = {};

  config.xmlDataUrl = 'https://sample-files.com/downloads/data/xml/complex-nested.xml';
  config.catBreedsUrl = 'https://catfact.ninja/breeds';
  config.successStatus = 200;
  config.chromeRobot = {
    window: '^Google Chrome',
    fork: 'C:/Program Files/Google/Chrome/Application/chrome.exe',
    highlight: true
  };
  config.testInputsPath = 'C:/ILASS-AT/ILASS/test-inputs';

  return config;
}

