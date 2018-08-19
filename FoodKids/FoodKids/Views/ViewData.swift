//
//  ViewData.swift
//  FoodKids
//
//  Created by Marcos Vinicius Souza Lacerda on 18/08/2018.
//  Copyright © 2018 Expresso MovHack Expresso MovHack Expresso MovHack Expresso MovHack. All rights reserved.
//

import UIKit
import TagListView

class ViewData: UIView {

    @IBOutlet weak var lbTitle      : UILabel!
    @IBOutlet weak var lbSubTitle   : UILabel!
    @IBOutlet weak var lbTxtName    : UILabel!
    @IBOutlet weak var txtName      : UITextField!
    @IBOutlet weak var lbQtdAge     : UILabel!
    @IBOutlet weak var tagListView  : TagListView!
    @IBOutlet weak var lbtxtKG      : UILabel!
    @IBOutlet weak var txtKG        : UITextField!
    @IBOutlet weak var lbKg         : UILabel!
    @IBOutlet weak var btnDone      : UIButton!
    
    override func layoutSubviews() {
        
        configureViews()
    }
}


extension ViewData {
    
    fileprivate func configureViews() {
        
            lbSubTitle.text                         = "Olá, papai ou mamãe! \nVamos planejar a alimentação  \ndos seus filhos!"
            lbSubTitle.adjustsFontSizeToFitWidth    = true
        
           tagListView.delegate                     = self
           tagListView.addTag("0-2")
           tagListView.addTag("2-4")
           tagListView.addTag("4-6")
           tagListView.addTag("6-8")
           tagListView.addTag("8-12")
           tagListView.textFont                     = UIFont.systemFont(ofSize: 24)
           tagListView.alignment                    = .center
    
         btnDone.layer.cornerRadius                 = 3
         btnDone.layer.borderWidth                  = 2
         btnDone.layer.borderColor                  = UIColor(red:0.00, green:0.98, blue:0.57, alpha:1.0).cgColor
    }
}


extension ViewData : TagListViewDelegate {
    
    func tagPressed(_ title: String, tagView: TagView, sender: TagListView) {
       
        _ = tagListView.selectedTags().map({ $0.isSelected = false })
        
        tagView.isSelected = true
    }
}
