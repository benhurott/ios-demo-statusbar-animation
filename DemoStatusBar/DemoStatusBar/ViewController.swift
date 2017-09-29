//
//  ViewController.swift
//  DemoStatusBar
//
//  Created by Ben-Hur Santos Ott on 28/09/17.
//  Copyright © 2017 Emerald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isStatusBarHidden: Bool = false
    
    override var prefersStatusBarHidden: Bool {
        return self.isStatusBarHidden
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }
    
    @IBAction func togglePressed(_ sender: Any) {
        self.isStatusBarHidden = !self.isStatusBarHidden
        
        UIView.animate(withDuration: 0.3) {
            self.setNeedsStatusBarAppearanceUpdate()
        }
    }
}



