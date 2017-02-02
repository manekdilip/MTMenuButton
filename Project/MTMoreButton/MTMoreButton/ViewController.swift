import UIKit

class ViewController: UIViewController, MenuButtonDelegate {

//MARK: - Override Method
    var viewMoreLeftButton1:MTMenuButton!
    var viewMoreLeftButton2:MTMenuButton!
    var viewMoreLeftButton3:MTMenuButton!
    var viewMoreLeftButton4:MTMenuButton!
    var viewMoreLeftButton5:MTMenuButton!
    var viewMoreLeftButton6:MTMenuButton!
    
    var viewMoreRightButton1:MTMenuButton!
    var viewMoreRightButton2:MTMenuButton!
    var viewMoreRightButton3:MTMenuButton!
    var viewMoreRightButton4:MTMenuButton!
    var viewMoreRightButton5:MTMenuButton!
    var viewMoreRightButton6:MTMenuButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create viewMoreLeftButton1
        viewMoreLeftButton1 = MTMenuButton.init(frame: CGRect(x: 0,y: 20,width: 64,height: 54)).showWithBackArrow(view: self.view, isLeftDirection: true, topSpacing: 17, leftSpacing: 17) as! MTMenuButton
        viewMoreLeftButton1.delegate = self
        viewMoreLeftButton1.setColor(red: 255.0, green: 255.0, blue: 255.0)
        
        //Create viewMoreLeftButton2
        viewMoreLeftButton2 = MTMenuButton.init(frame: CGRect(x: 0,y: 120,width: 64,height: 54)).showWithClose(view: self.view, topSpacing: 17, leftSpacing: 17) as! MTMenuButton
        viewMoreLeftButton2.delegate = self
        viewMoreLeftButton2.setColor(red: 255.0, green: 255.0, blue: 255.0)
        
        /*
        //Create viewMoreLeftButton3
        viewMoreLeftButton3 = MTMenuButton.init(frame: CGRect(x: 0,y: 164,width: 100,height: 75)).showWithBackArrow(view: self.view, isLeftDirection: true, topSpacing: 17, leftSpacing: 17) as! MTMenuButton
        viewMoreLeftButton3.delegate = self
        viewMoreLeftButton3.setColor(red: 255.0, green: 255.0, blue: 255.0)
        viewMoreLeftButton3.backgroundColor = .gray
        viewMoreLeftButton3.animationDuration = 0.4
        */
 
        /*
        //Create viewMoreLeftButton4
        viewMoreLeftButton4 = MTMenuButton.init(frame: CGRect(x: 0,y: 244,width: 100,height: 100)).showWithBackArrow(view: self.view, isLeftDirection: true, topSpacing: 1, leftSpacing: 17) as! MTMenuButton
        viewMoreLeftButton4.delegate = self
        viewMoreLeftButton4.setColor(red: 255.0, green: 255.0, blue: 255.0)
        viewMoreLeftButton4.backgroundColor = .gray
        viewMoreLeftButton4.animationDuration = 0.35
        */
        
        /*
        //Create viewMoreLeftButton5
        viewMoreLeftButton5 = MTMenuButton.init(frame: CGRect(x: 0,y: 350,width: 100,height: 100)).showWithBackArrow(view: self.view, isLeftDirection: true, topSpacing: 17, leftSpacing: 1) as! MTMenuButton
        viewMoreLeftButton5.delegate = self
        viewMoreLeftButton5.setColor(red: 255.0, green: 255.0, blue: 255.0)
        viewMoreLeftButton5.backgroundColor = .gray
        viewMoreLeftButton5.animationDuration = 0.3
        */
        
        /*
        //Create viewMoreLeftButton6
        viewMoreLeftButton6 = MTMenuButton.init(frame: CGRect(x: 0,y: 460,width: 100,height: 100)).showWithBackArrow(view: self.view, isLeftDirection: true, topSpacing: 1, leftSpacing: 1) as! MTMenuButton
        viewMoreLeftButton6.delegate = self
        viewMoreLeftButton6.setColor(red: 0.0, green: 0.0, blue: 255.0)
        viewMoreLeftButton6.backgroundColor = .gray
        viewMoreLeftButton6.animationDuration = 0.25
        */
        
        //Create viewMoreRightButton1
        viewMoreRightButton1 = MTMenuButton.init(frame: CGRect(x: self.view.frame.size.width - 64,y: 20,width: 64,height: 54)).showWithBackArrow(view: self.view, isLeftDirection: false, topSpacing: 17, leftSpacing: 17) as! MTMenuButton
        viewMoreRightButton1.delegate = self
        viewMoreRightButton1.setColor(red: 255.0, green: 255.0, blue: 255.0)
        
        //Create viewMoreRightButton2
        viewMoreRightButton2 = MTMenuButton.init(frame: CGRect(x: self.view.frame.size.width - 80,y: 110,width: 80,height: 80)).showWithClose(view: self.view, topSpacing: 17, leftSpacing: 17) as! MTMenuButton
        viewMoreRightButton2.delegate = self
        viewMoreRightButton2.setColor(red: 255.0, green: 255.0, blue: 255.0)
        viewMoreRightButton2.animationDuration = 0.25
        
        /*
        //Create viewMoreRightButton3
        viewMoreRightButton3 = MTMenuButton.init(frame: CGRect(x: self.view.frame.size.width - 100,y: 164,width: 100,height: 75)).showWithBackArrow(view: self.view, isLeftDirection: false, topSpacing: 17, leftSpacing: 17) as! MTMenuButton
        viewMoreRightButton3.delegate = self
        viewMoreRightButton3.setColor(red: 255.0, green: 255.0, blue: 255.0)
        viewMoreRightButton3.backgroundColor = .gray
        viewMoreRightButton3.animationDuration = 0.4
        */
        
        /*
        //Create viewMoreRightButton4
        viewMoreRightButton4 = MTMenuButton.init(frame: CGRect(x: self.view.frame.size.width - 100,y: 244,width: 100,height: 100)).showWithBackArrow(view: self.view, isLeftDirection: false, topSpacing: 1, leftSpacing: 17) as! MTMenuButton
        viewMoreRightButton4.delegate = self
        viewMoreRightButton4.setColor(red: 255.0, green: 255.0, blue: 255.0)
        viewMoreRightButton4.backgroundColor = .gray
        viewMoreRightButton4.animationDuration = 0.35
        */
        
        /*
        //Create viewMoreRightButton5
        viewMoreRightButton5 = MTMenuButton.init(frame: CGRect(x: self.view.frame.size.width - 100,y: 350,width: 100,height: 100)).showWithBackArrow(view: self.view, isLeftDirection: false, topSpacing: 17, leftSpacing: 1) as! MTMenuButton
        viewMoreRightButton5.delegate = self
        viewMoreRightButton5.setColor(red: 255.0, green: 255.0, blue: 255.0)
        viewMoreRightButton5.backgroundColor = .gray
        viewMoreRightButton5.animationDuration = 0.3
        */
        
        /*
        //Create viewMoreRightButton6
        viewMoreRightButton6 = MTMenuButton.init(frame: CGRect(x: self.view.frame.size.width - 100,y: 460,width: 100,height: 100)).showWithBackArrow(view: self.view, isLeftDirection: false, topSpacing: 1, leftSpacing: 1) as! MTMenuButton
        viewMoreRightButton6.delegate = self
        viewMoreRightButton6.setColor(red: 0.0, green: 0.0, blue: 255.0)
        viewMoreRightButton6.backgroundColor = .gray
        viewMoreRightButton6.animationDuration = 0.25
         */
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
//MARK: - More Button Delegate
    func tappedOnMoreButton(sender: UIControl, moreButton: MTMenuButton) {
        if viewMoreLeftButton1 == moreButton {
            if viewMoreLeftButton1.isButtonOpen == true {
                print("Left button 1 open.")
            } else {
                print("Left button 1 close.")
            }
        }
        else if viewMoreLeftButton2 == moreButton {
            if viewMoreLeftButton2.isButtonOpen == true {
                print("Left button 2 open.")
            } else {
                print("Left button 2 close.")
            }
        }
        /*else if viewMoreLeftButton3 == moreButton {
            if viewMoreLeftButton3.isButtonOpen == true {
                print("Left button 3 open.")
            } else {
                print("Left button 3 close.")
            }
        }*/
        /*else if viewMoreLeftButton4 == moreButton {
            if viewMoreLeftButton4.isButtonOpen == true {
                print("Left button 4 open.")
            } else {
                print("Left button 4 close.")
            }
        }*/
        /*else if viewMoreLeftButton5 == moreButton {
            if viewMoreLeftButton5.isButtonOpen == true {
                print("Left button 5 open.")
            } else {
                print("Left button 5 close.")
            }
        }*/
        /*else if viewMoreLeftButton6 == moreButton {
            if viewMoreLeftButton6.isButtonOpen == true {
                print("Left button 6 open.")
            } else {
                print("Left button 6 close.")
            }
        }*/
        if viewMoreRightButton1 == moreButton {
            if viewMoreRightButton1.isButtonOpen == true {
                print("Right button 1 open.")
            } else {
                print("Right button 1 close.")
            }
        }
        else if viewMoreRightButton2 == moreButton {
            if viewMoreRightButton2.isButtonOpen == true {
                print("Right button 2 open.")
            } else {
                print("Right button 2 close.")
            }
        }
        /*else if viewMoreRightButton3 == moreButton {
            if viewMoreRightButton3.isButtonOpen == true {
                print("Right button 3 open.")
            } else {
                print("Right button 3 close.")
            }
        }*/
        /*else if viewMoreRightButton4 == moreButton {
            if viewMoreRightButton4.isButtonOpen == true {
                print("Right button 4 open.")
            } else {
                print("Right button 4 close.")
            }
        }*/
        /*else if viewMoreRightButton5 == moreButton {
            if viewMoreRightButton5.isButtonOpen == true {
                print("Right button 5 open.")
            } else {
                print("Right button 5 close.")
            }
        }*/
        /*else if viewMoreRightButton6 == moreButton {
            if viewMoreRightButton6.isButtonOpen == true {
                print("Right button 6 open.")
            } else {
                print("Right button 6 close.")
            }
        }*/
    }
}

