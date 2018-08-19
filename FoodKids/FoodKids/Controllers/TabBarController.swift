//
//  TabBarController.swift
//  FoodKids
//
//  Created by Marcos Vinicius Souza Lacerda on 19/08/2018.
//  Copyright © 2018 Expresso MovHack Expresso MovHack Expresso MovHack Expresso MovHack. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
    }
}


extension TabBarController : UITabBarControllerDelegate {
   
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        if viewController is ControllerMakeOrder {
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            if let controller = storyboard.instantiateViewController(withIdentifier: "ControllerMakeOrder") as? ControllerMakeOrder {
                
                controller.modalPresentationStyle = .fullScreen
                
                self.present(controller, animated: true, completion: nil)
            }
            
            return false
        }
        
        return true
    }
}
