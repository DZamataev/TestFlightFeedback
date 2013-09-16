TestFlightFeedback
==================

Dropdown replacement for the feedback view controller functionality which was cuted from TestFlight SDK since version 2.0

Installation
==================

CocoaPods
```
pod 'TestFlightFeedback', '~> 1.0.0'
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

Screenshots
==================

![iPhone screenshot](http://imageshack.us/a/img11/8233/62e0.png) 

![iPad screenshot](http://imageshack.us/a/img708/4246/8ga8.png) 

### Like it?

<div>
<a href="https://twitter.com/DZamataev" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @DZamataev</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
</div>
