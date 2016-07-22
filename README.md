coffeelint-jasmine
==================

prevents you from committing tests annotation as `iit`, `ddescribe`, `xit`, `xdescribe`, `fit` and `fdescribe`.


## Installation

Install 
  ```
  npm install coffeelint-jasmine
  ```
  
  
Add this to your coffeelint.json


    "no_jasmine_annotations": {
      "module": "coffeelint-jasmine",
      "level": "error"
    }
