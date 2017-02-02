# MTMenuButton
Create easily menu button with back and close animation.
MTMenuButton is written in Swift 3.0 and easy to use in project.

![BackgroundImage](https://github.com/manekdilip/MTMenuButton/blob/master/Images/MTMoreButton.gif)

#Installation

### Manually

Clone or Download this Repo. Then simply drag the class ```MTMenuButton.swift``` to your Xcode project.


###Simply way to integrate ```MTMenuButton```


###Implement ```MenuButtonDelegate``` delegate
```
    func tappedOnMoreButton(sender: UIControl, moreButton: MTMenuButton) {
      if viewMoreLeftButton1 == moreButton {
            if viewMoreLeftButton1.isButtonOpen == true {
                print("Left button 1 open.")
            } else {
                print("Left button 1 close.")
            }
        }
    }
```

###Menu button with back animation
```
        var viewMoreLeftButton1 = MTMenuButton.init(frame: CGRect(x: 0,y: 20,width: 64,height: 54)).showWithBackArrow(view: self.view, isLeftDirection: true, topSpacing: 17, leftSpacing: 17) as! MTMenuButton
        viewMoreLeftButton1.delegate = self
        viewMoreLeftButton1.setColor(red: 255.0, green: 255.0, blue: 255.0)

```
###Menu button with close animation
```
        var viewMoreLeftButton2 = MTMenuButton.init(frame: CGRect(x: 0,y: 120,width: 64,height: 54)).showWithClose(view: self.view, topSpacing: 17, leftSpacing: 17) as! MTMenuButton
        viewMoreLeftButton2.delegate = self
        viewMoreLeftButton2.setColor(red: 255.0, green: 255.0, blue: 255.0)

```
