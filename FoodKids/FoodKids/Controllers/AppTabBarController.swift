//
//  TabBarController.swift
//  FoodKids
//
//  Created by Marcos Vinicius Souza Lacerda on 19/08/2018.
//  Copyright © 2018 Expresso MovHack Expresso MovHack Expresso MovHack Expresso MovHack. All rights reserved.
//

import UIKit

class AppTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
    }
}


extension AppTabBarController : UITabBarControllerDelegate {
   
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        if viewController is OrderViewController {
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let controller = storyboard.instantiateViewController(withIdentifier: "ControllerMakeOrder") as? OrderViewController {
                
                controller.modalPresentationStyle = .fullScreen
                
                self.present(controller, animated: true, completion: nil)
            }
            
            return false
        }
        
        return true
    }
}
