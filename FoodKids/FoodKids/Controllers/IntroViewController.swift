//
//  IntroChildViewController.swift
//  FoodKids
//
//  Created by Jean Paul Marinho on 19/08/18.
//  Copyright © 2018 Expresso MovHack Expresso MovHack Expresso MovHack Expresso MovHack. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet var introChildView: UIView!
    @IBOutlet var introRestrictionView: UIView!
    @IBOutlet var proceedButton: AppButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.containerView.addSubview(self.introChildView)
        self.introChildView.alpha = 0
        self.introChildView.center.y += 100
        UIView.animate(withDuration: 0.2, delay: 0.2, options: .curveEaseInOut, animations: {
            self.introChildView.alpha = 1
            self.introChildView.center.y -= 100
        }, completion: nil)
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        self.introChildView.removeFromSuperview()
        self.containerView.addSubview(self.introRestrictionView)
        self.introRestrictionView.alpha = 0
        self.introRestrictionView.center.y += 100
        self.proceedButton.center.y += 200
        UIView.animate(withDuration: 0.2, delay: 0.2, options: .curveEaseInOut, animations: {
            self.introRestrictionView.alpha = 1
            self.introRestrictionView.center.y -= 100
        }, completion: { (success) in
            UIView.animate(withDuration: 0.2, delay: 0.2, options: .curveEaseInOut, animations: {
            }, completion: nil)
            self.proceedButton.center.y -= 200
        })
    }
}
