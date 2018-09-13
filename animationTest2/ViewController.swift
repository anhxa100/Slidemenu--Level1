//
//  ViewController.swift
//  animationTest2
//
//  Created by anhxa100 on 9/12/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
//    @IBOutlet weak var myView: UIView!
//    @IBOutlet weak var buttonDismiss: UIButton!
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var LeadingContraint: NSLayoutConstraint!
    
    var menuShow: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        self.myView.backgroundColor = .red
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    @IBAction func openMenu(_ sender: Any) {
        if !menuShow {
            menuShow = true
            LeadingContraint.constant =  (2 * self.view.bounds.width) / 3
            showShadowForCenterViewController()
            
        } else {
            menuShow = false
            self.LeadingContraint.constant = 0
            showShadowForCenterViewController()
        }
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
//        UIView.commitAnimations()
//        menuShow = !menuShow
    }
    
    //MARK: Func shadowVC
    func showShadowForCenterViewController() {
            self.redView.layer.shadowOffset = CGSize(width: 0, height: 3)
            self.redView.layer.shadowRadius = 6.0
            self.redView.layer.shadowOpacity = 0.7
            
//            let shadowRect: CGRect = redView.bounds.insetBy(dx: 0, dy: 4)
//            view.layer.shadowPath = UIBezierPath(rect: shadowRect).cgPath
    }
    
    @IBAction func buttonDismissSlideMenu(_ sender: UIButton) {
        menuShow = false
            self.LeadingContraint.constant = 0
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
    }
//        UIView.commitAnimations()
//        } else {
//            UIView.animate(withDuration: 0.5, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
//                self.view.layoutIfNeeded()
//            }, completion: nil)
//            self.buttonDismiss.isEnabled = true
//        }
//        menuShow = !menuShow
    }




