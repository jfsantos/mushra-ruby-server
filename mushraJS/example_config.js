// configure the test here
var TestData = {
  "TestName": "Your Test Name",
  "RateScalePng": "img/scale_abs.png",
  "RateScaleBgPng": "img/scale_abs_background.png",
  "RateMinValue": 0,
  "RateMaxValue": 100,
  "RateDefaultValue":0,
  "LoopByDefault": false,
  "ShowFileIDs": false,
  "EnableABLoop": true,
  "EnableOnlineSubmission": true,
  "SubmitResultsURL": "https://gentle-tundra-1517.herokuapp.com/submit",
  "SupervisorContact": "jfsantos@emt.inrs.ca",
  "Testsets": [
    //    
    {
      "Name": "Test 1",
      "Reference": "test1/reference.wav",
      "Files": [
            "test1/1.wav",
            "test1/2.wav",
            "test1/3.wav",
            "test1/4.wav",
        ]
    },
    //    
    {
      "Name": "Not actually a test, all files are the same ;)",
      "Reference": "test2/reference.wav",
      "Files": [
            "test2/1.wav",
            "test2/2.wav",
            "test2/3.wav",
            "test2/4.wav",
        ]
    },
  ]
}
