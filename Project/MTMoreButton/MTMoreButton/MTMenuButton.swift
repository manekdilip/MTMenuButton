import UIKit

//MARK: - More Button Delegate
protocol MenuButtonDelegate {
    func tappedOnMoreButton(sender: UIControl,moreButton: MTMenuButton)
}

class MTMenuButton: UIView {
    
    //MARK: - Variable
    private var viewLine1:UIView!
    private var viewLine2:UIView!
    private var viewLine3:UIView!
    
    private var rectViewLine1:CGRect!
    private var rectViewLine2:CGRect!
    private var rectViewLine3:CGRect!
    
    private var controlBG:UIControl!
    var delegate:MenuButtonDelegate?
    
    var isButtonOpen:Bool = true
    private var animationType = ""
    private var isLeftDirection = true
    
    var animationDuration = 0.3
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .clear
        
        //Sidemenu Open Notification
        NotificationCenter.default.addObserver(self, selector: #selector(MTMenuButton.openSideMenu), name: NSNotification.Name(rawValue: "openSideMenuNotification"), object: nil)
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func showWithBackArrow(view: UIView,isLeftDirection: Bool,topSpacing: CGFloat,leftSpacing: CGFloat) -> UIView{
        
        animationType = "showWithBackArrow"
        view.addSubview(self)
        self.isLeftDirection = isLeftDirection
        
        //Background
        controlBG = UIControl(frame: CGRect(x: 0,y: 0,width: self.frame.size.width,height: self.frame.size.height))
        controlBG.backgroundColor = UIColor.clear
        controlBG.addTarget(self, action: #selector(tappedOnMoreButton), for: .touchUpInside)
        self.addSubview(controlBG)
        
        //Top Line
        viewLine1 = UIView(frame: CGRect(x: leftSpacing,y: topSpacing,width: (self.frame.size.width) - (leftSpacing * 2),height: 2))
        viewLine1.backgroundColor = UIColor.white
        viewLine1.layer.cornerRadius = viewLine1.frame.size.height / 2.0
        viewLine1.isUserInteractionEnabled = false
        self.addSubview(viewLine1)
        rectViewLine1 = viewLine1.frame
        
        //Middle Line
        viewLine2 = UIView(frame: CGRect(x: leftSpacing,y: (self.frame.size.height / 2.0) - (viewLine1.frame.size.height / 2.0),width: (self.frame.size.width) - (leftSpacing * 2),height: 2))
        viewLine2.backgroundColor = UIColor.white
        viewLine2.layer.cornerRadius = viewLine2.frame.size.height / 2.0
        viewLine2.isUserInteractionEnabled = false
        self.addSubview(viewLine2)
        rectViewLine2 = viewLine2.frame
        
        //Bottom Line
        viewLine3 = UIView(frame: CGRect(x: leftSpacing,y: ((self.frame.size.height) - (viewLine1.frame.size.height)) - topSpacing,width: (self.frame.size.width) - (leftSpacing * 2),height: 2))
        viewLine3.backgroundColor = UIColor.white
        viewLine3.layer.cornerRadius = viewLine3.frame.size.height / 2.0
        viewLine3.isUserInteractionEnabled = false
        self.addSubview(viewLine3)
        rectViewLine3 = viewLine3.frame
        
        self.setColor(red: 192.0, green: 192.0, blue: 192.0)
        
        return self
    }
    func showWithClose(view: UIView,topSpacing: CGFloat,leftSpacing: CGFloat) -> UIView{
        
        animationType = "showWithClose"
        view.addSubview(self)
        
        //Background
        controlBG = UIControl(frame: CGRect(x: 0,y: 0,width: self.frame.size.width,height: self.frame.size.height))
        controlBG.backgroundColor = UIColor.clear
        controlBG.addTarget(self, action: #selector(tappedOnMoreButton), for: .touchUpInside)
        self.addSubview(controlBG)
        
        //Top Line
        viewLine1 = UIView(frame: CGRect(x: leftSpacing,y: topSpacing,width: (self.frame.size.width) - (leftSpacing * 2),height: 2))
        viewLine1.backgroundColor = UIColor.white
        viewLine1.layer.cornerRadius = viewLine1.frame.size.height / 2.0
        viewLine1.isUserInteractionEnabled = false
        self.addSubview(viewLine1)
        rectViewLine1 = viewLine1.frame
        
        //Middle Line
        viewLine2 = UIView(frame: CGRect(x: leftSpacing,y: (self.frame.size.height / 2.0) - (viewLine1.frame.size.height / 2.0),width: (self.frame.size.width) - (leftSpacing * 2),height: 2))
        viewLine2.backgroundColor = UIColor.white
        viewLine2.layer.cornerRadius = viewLine2.frame.size.height / 2.0
        viewLine2.isUserInteractionEnabled = false
        self.addSubview(viewLine2)
        rectViewLine2 = viewLine2.frame
        
        //Bottom Line
        viewLine3 = UIView(frame: CGRect(x: leftSpacing,y: ((self.frame.size.height) - (viewLine1.frame.size.height)) - topSpacing,width: (self.frame.size.width) - (leftSpacing * 2),height: 2))
        viewLine3.backgroundColor = UIColor.white
        viewLine3.layer.cornerRadius = viewLine3.frame.size.height / 2.0
        viewLine3.isUserInteractionEnabled = false
        self.addSubview(viewLine3)
        rectViewLine3 = viewLine3.frame
        
        self.setColor(red: 192.0, green: 192.0, blue: 192.0)
        
        return self
    }
    func setColor(red: CGFloat ,green: CGFloat ,blue: CGFloat) {
        viewLine1.backgroundColor = UIColor.init(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1.0)
        viewLine2.backgroundColor = UIColor.init(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1.0)
        viewLine3.backgroundColor = UIColor.init(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1.0)
    }
    //MARK: - Tapped Event
    func tappedOnMoreButton(sender: UIControl) {
        
        controlBG.isUserInteractionEnabled = false
        delegate?.tappedOnMoreButton(sender: sender, moreButton: self)
        
        if animationType == "showWithBackArrow" {
            
            self.openCloseMenuButtonWithBackArrow()
        }
        else if animationType == "showWithClose" {
            self.openCloseMenuButtonWithCloseArrow()
        }
    }
    private func openCloseMenuButtonWithCloseArrow() {
        
        //Button Open
        if isButtonOpen == true {
            UIView.animate(withDuration: animationDuration, animations: {
                self.viewLine1.frame = CGRect(
                    x: ((self.rectViewLine1.origin.x) + ((self.rectViewLine1.size.width / 4.0) / 2.0)),
                    y: (self.rectViewLine2.origin.y),
                    width: ((self.rectViewLine1.size.width) - (self.rectViewLine1.size.width / 4.0)),
                    height: (self.rectViewLine1.size.height))
                self.viewLine1.rotate(angle: 135)
                
                self.viewLine2.frame = CGRect(
                    x: (self.rectViewLine2.origin.x),
                    y: (self.rectViewLine2.origin.y),
                    width: (0),
                    height: (self.rectViewLine2.size.height))
                
                self.viewLine2.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI))
                
                self.viewLine3.frame = CGRect(
                    x: ((self.rectViewLine3.origin.x) + ((self.rectViewLine1.size.width / 4.0) / 2.0)),
                    y: (self.rectViewLine2.origin.y),
                    width: ((self.rectViewLine3.size.width) - (self.rectViewLine3.size.width / 4.0)),
                    height: (self.rectViewLine3.size.height))
                self.viewLine3.rotate(angle: 225)
                
            }, completion: { (finished) in
                self.isButtonOpen = false
                self.controlBG.isUserInteractionEnabled = true
            })
        }
        //Button Close
        else {
            
            UIView.animate(withDuration: animationDuration, animations: {
                
                self.viewLine1.rotate(angle: (360 - 135))
                self.viewLine1.frame = self.rectViewLine1
                
                self.viewLine2.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI*2))
                self.viewLine2.frame = self.rectViewLine2
                
                self.viewLine3.rotate(angle: (360 - 225))
                self.viewLine3.frame = self.rectViewLine3
                
            }, completion: { (finished) in
                self.isButtonOpen = true
                self.controlBG.isUserInteractionEnabled = true
            })
        }
    }
    private func openCloseMenuButtonWithBackArrow() {
        //Left Side Animation
        if isLeftDirection == true {
            //Button Open
            if isButtonOpen == true {
                UIView.animate(withDuration: animationDuration, animations: {
                    self.viewLine1.frame = CGRect(
                        x: ((self.rectViewLine1.origin.x) - (self.rectViewLine1.size.width / 13.0)),
                        y: ((self.rectViewLine2.origin.y) - ((self.rectViewLine1.size.width) - (self.rectViewLine1.size.width / 1.2))),
                        width: ((self.rectViewLine1.size.width) - (self.rectViewLine1.size.width / 2.0)),
                        height: (self.rectViewLine1.size.height))
                    
                    self.viewLine1.rotate(angle: 135)
                    
                    self.viewLine2.frame = CGRect(
                        x: (self.rectViewLine2.origin.x),
                        y: (self.rectViewLine2.origin.y),
                        width: (self.rectViewLine2.size.width) - 5,
                        height: (self.rectViewLine2.size.height))
                    
                    self.viewLine2.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI))
                    
                    self.viewLine3.frame = CGRect(
                        x: (self.rectViewLine3.origin.x) - (self.rectViewLine3.size.width / 13.0),
                        y: ((self.rectViewLine2.origin.y) + ((self.rectViewLine3.size.width) - (self.rectViewLine3.size.width / 1.2))),
                        width: ((self.rectViewLine3.size.width) - (self.rectViewLine3.size.width / 2.0)),
                        height: (self.rectViewLine3.size.height))
                    
                    self.viewLine3.rotate(angle: 225)
                    
                }, completion: { (finished) in
                    self.isButtonOpen = false
                    self.controlBG.isUserInteractionEnabled = true
                })
            }
                //Button Close
            else {
                
                UIView.animate(withDuration: animationDuration, animations: {
                    
                    self.viewLine1.rotate(angle: (360 - 135))
                    self.viewLine1.frame = self.rectViewLine1
                    
                    self.viewLine2.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI*2))
                    self.viewLine2.frame = self.rectViewLine2
                    
                    self.viewLine3.rotate(angle: (360 - 225))
                    self.viewLine3.frame = self.rectViewLine3
                    
                }, completion: { (finished) in
                    self.isButtonOpen = true
                    self.controlBG.isUserInteractionEnabled = true
                })
            }
        }//Right Side Animation
        else {
            //Button Open
            if isButtonOpen == true {
                
                UIView.animate(withDuration: animationDuration, animations: {
                    
                    self.viewLine1.frame = CGRect(
                        x: ((self.rectViewLine1.origin.x) + (self.rectViewLine1.size.width) - (self.rectViewLine1.size.width / 2.0) + (self.rectViewLine1.size.width / 13.0)),
                        y: ((self.rectViewLine2.origin.y) - ((self.rectViewLine1.size.width) - (self.rectViewLine1.size.width / 1.2))),
                        width: (self.rectViewLine1.size.width) - (self.rectViewLine1.size.width / 2.0),
                        height: (self.rectViewLine1.size.height))
                    
                    self.viewLine1.rotate(angle: -135)
                    
                    self.viewLine2.frame = CGRect(
                        x: (self.rectViewLine2.origin.x) + 5,
                        y: (self.rectViewLine2.origin.y),
                        width: (self.rectViewLine2.size.width) - 5,
                        height: (self.rectViewLine2.size.height))
                    self.viewLine2.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI))
                    
                    self.viewLine3.frame = CGRect(
                        x: ((self.rectViewLine3.origin.x) + (self.rectViewLine3.size.width) - (self.rectViewLine3.size.width / 2.0) + (self.rectViewLine3.size.width / 13.0)),
                        y: ((self.rectViewLine2.origin.y) + ((self.rectViewLine3.size.width) - (self.rectViewLine3.size.width / 1.2))),
                        width: ((self.rectViewLine3.size.width) - (self.rectViewLine3.size.width / 2.0)),
                        height: (self.rectViewLine3.size.height))
                    
                    self.viewLine3.rotate(angle: -225)
                    
                }, completion: { (finished) in
                    self.isButtonOpen = false
                    self.controlBG.isUserInteractionEnabled = true
                })
            }
                //Button Close
            else {
                
                UIView.animate(withDuration: animationDuration, animations: {
                    
                    self.viewLine1.rotate(angle: -(360 - 135))
                    self.viewLine1.frame = self.rectViewLine1
                    
                    self.viewLine2.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI*2))
                    self.viewLine2.frame = self.rectViewLine2
                    
                    self.viewLine3.rotate(angle: -(360 - 225))
                    self.viewLine3.frame = self.rectViewLine3
                    
                }, completion: { (finished) in
                    self.isButtonOpen = true
                    self.controlBG.isUserInteractionEnabled = true
                })
            }
        }
    }
    func openSideMenu() {
        if self.isButtonOpen == false {
            self.tappedOnMoreButton(sender: controlBG)
        }
    }
}
extension UIView {
    func rotate(angle: CGFloat) {
        let radians = angle / 180.0 * CGFloat(M_PI)
        let rotation = self.transform.rotated(by: radians);
        self.transform = rotation
    }
}
