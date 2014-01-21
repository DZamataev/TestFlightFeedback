TestFlightFeedback
==================

Dropdown replacement for the feedback view controller functionality which was cuted from TestFlight SDK since version 2.0

**Version 1.0.0 is for iOS 6, version 2.0.* is for iOS 7.**

Installation
==================

CocoaPods
```
pod 'TestFlightFeedback'
```
or import everything from folder named ``` Core ```

How to use
==================

```
#import <TestFlight.h>
#import <TestFlight+OpenFeedback.h>
```

Just as before use

```
  [TestFlight openFeedbackView];
```

no need to change any of your code

Features
=====================================

**Open Feedback modally**

``` [TestFlight openFeedbackView]; ``` can be called from anywhere in your code


**Open Feedback on shake device** - every time user shakes device, feedback view opens

can be turned on/off this way

```
	[TestFlight of_enableOpenFeedbackOnShake]; // on
```

```
    [TestFlight of_disableOpenFeedbackOnShake]; // off
```

**Display Application Version and Application Build** from General project settings in the title of the toolbar of the feedback view.


Screenshots
==================
![iPhone iOS 7 screenshot](http://imagizer.imageshack.us/v2/640x480q90/809/y6mu.png) 
![iPhone iOS 6 screenshot](http://imageshack.us/a/img11/8233/62e0.png) 

![iPad iOS 7 screenshot](http://imagizer.imageshack.us/v2/640x480q90/836/r7ud.png)
![iPad iOS 6 screenshot](http://imageshack.us/a/img708/4246/8ga8.png) 

 


---------------

[![follow button](http://dzamataev.github.io/images/twitter_follow.png)](https://twitter.com/DZamataev)

[![endorse](https://api.coderwall.com/dzamataev/endorsecount.png)](https://coderwall.com/dzamataev)
