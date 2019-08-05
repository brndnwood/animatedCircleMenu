//
//  ViewController.swift
//  animatedMenu2
//
//  Created by Brandon Wood on 8/5/19.
//  Copyright © 2019 Brandon Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuBtn: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    
    var button1ShownCenter : CGPoint?
    var button2ShownCenter : CGPoint?
    var button3ShownCenter : CGPoint?
    var button4ShownCenter : CGPoint?
    var button5ShownCenter : CGPoint?
    var button6ShownCenter : CGPoint?
    
    var circleOrigHeight : CGFloat?
    var circleOrigWidth : CGFloat?

    @IBOutlet weak var circleBackground: Circle!
    
    var menuHidden = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.button1ShownCenter = self.button1.center
        self.button2ShownCenter = self.button2.center
        self.button3ShownCenter = self.button3.center
        self.button4ShownCenter = self.button4.center
        self.button5ShownCenter = self.button5.center
        self.button6ShownCenter = self.button6.center
        
        circleOrigHeight = circleBackground.frame.size.height
        circleOrigWidth = circleBackground.frame.size.width
        
        circleBackground.frame.size.height = 50
        circleBackground.frame.size.width = 50
        circleBackground.center = menuBtn.center

        hideMenuButtons()
    }
    

    
    
    private func hideMenuButtons() {
        self.button1.alpha = 0
        self.button2.alpha = 0
        self.button3.alpha = 0
        self.button4.alpha = 0
        self.button5.alpha = 0
        self.button6.alpha = 0

        self.button1.center = menuBtn.center
        self.button2.center = menuBtn.center
        self.button3.center = menuBtn.center
        self.button4.center = menuBtn.center
        self.button5.center = menuBtn.center
        self.button6.center = menuBtn.center
    }
    
    
    
    @IBAction func menuButtonPressed(_ sender: Any) {
    
        if (menuHidden) {
            
            UIView.animate(withDuration: 0.2, animations: {
                self.button1.alpha = 1
                self.button2.alpha = 1
                self.button3.alpha = 1
                self.button4.alpha = 1
                self.button5.alpha = 1
                self.button6.alpha = 1
                
                self.button1.center = self.button1ShownCenter!
                self.button2.center = self.button2ShownCenter!
                self.button3.center = self.button3ShownCenter!
                self.button4.center = self.button4ShownCenter!
                self.button5.center = self.button5ShownCenter!
                self.button6.center = self.button6ShownCenter!
                
                
                self.circleBackground.frame.size.height = self.circleOrigHeight!
                self.circleBackground.frame.size.width = self.circleOrigWidth!
                self.circleBackground.center = self.menuBtn.center
            })
        } else {
            UIView.animate(withDuration: 0.2, animations: {
                self.hideMenuButtons()
                self.circleBackground.frame.size.height = 50
                self.circleBackground.frame.size.width = 50
                self.circleBackground.center = self.menuBtn.center
            })
        }
        
        menuHidden = !menuHidden
    
    }
}

