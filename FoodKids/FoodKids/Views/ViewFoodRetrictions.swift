//
//  ViewFoodRetrictions.swift
//  FoodKids
//
//  Created by Marcos Vinicius Souza Lacerda on 18/08/2018.
//  Copyright © 2018 Expresso MovHack Expresso MovHack Expresso MovHack Expresso MovHack. All rights reserved.
//

import UIKit
import TagListView

class ViewFoodRetrictions: UIView {
    
    @IBOutlet weak var lbSubTitle       : UILabel!
    @IBOutlet weak var lbRestrictions   : UILabel!
    @IBOutlet weak var tagListView      : TagListView!
    @IBOutlet weak var btnDone          : UIButton!
    
    override func layoutSubviews() {
        
        configureViews()
    }
}


extension ViewFoodRetrictions {
    
    fileprivate func configureViews() {
        
            lbSubTitle.text                        = "Agora, vamos falar um pouco sobre \nas preferências alimentares?"
            lbSubTitle.adjustsFontSizeToFitWidth   = true
        lbRestrictions.text                        = "Ela ou ele tem alguma \nrestrição alimentar?"
        lbRestrictions.adjustsFontSizeToFitWidth   = true
        
        tagListView.delegate                       = self
        tagListView.addTag("Lactose")
        tagListView.addTag("Açúcar")
        tagListView.addTag("Vegetariana")
        tagListView.addTag("Vegana")
        
        btnDoneDisabled()
    }
}


extension ViewFoodRetrictions : TagListViewDelegate {
    
    func tagPressed(_ title: String, tagView: TagView, sender: TagListView) {
        
        tagView.isSelected = tagView.isSelected ? false : true
        
        switch tagListView.selectedTags().count > 0 {
            
            case true   : btnDoneEnabled()
            
            case false  : btnDoneDisabled()
        }
    }
}

extension ViewFoodRetrictions {
    
    fileprivate func btnDoneEnabled(){
        
    
        btnDone.titleLabel?.textColor              = UIColor.white
        btnDone.backgroundColor                    = UIColor(red:0.00, green:0.98, blue:0.57, alpha:1.0)
        btnDone.layer.cornerRadius                 = 3
        btnDone.isEnabled                          = true
    }
    
    fileprivate func btnDoneDisabled(){
        
        btnDone.titleLabel?.textColor              = UIColor(red:0.00, green:0.98, blue:0.57, alpha:1.0)
        btnDone.backgroundColor                    = UIColor.clear
        btnDone.layer.cornerRadius                 = 3
        btnDone.layer.borderWidth                  = 2
        btnDone.layer.borderColor                  = UIColor(red:0.00, green:0.98, blue:0.57, alpha:1.0).cgColor
        btnDone.isEnabled                          = false
    }
}
