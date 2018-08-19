//
//  IntroRestrictionViewController.swift
//  FoodKids
//
//  Created by Jean Paul Marinho on 19/08/18.
//  Copyright © 2018 Expresso MovHack Expresso MovHack Expresso MovHack Expresso MovHack. All rights reserved.
//

import UIKit
import TagListView

class IntroRestrictionViewController: UIViewController {

    @IBOutlet weak var tagListView: TagListView!
    var tagListDelegateHandler = TagListDelegateHandler(state: .multiple)

    override func viewDidLoad() {
        super.viewDidLoad()
        TagListView.config(view: self.tagListView)
        self.tagListView.addTags(["Lactose", "Açúcar", "Vegetariana"])
        self.tagListView.delegate = self.tagListDelegateHandler
    }
}
