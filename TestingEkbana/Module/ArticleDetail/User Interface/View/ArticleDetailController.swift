//
//  ArticleDetailController.swift
//  TestingEkbana
//
//  Created by manjil on 23/07/2021.
//
//

import UIKit

class ArticleDetailController: <#UIViewController#> {
    
    // MARK: Properties
    
    var presenter: ArticleDetailModuleInterface?
    
    // MARK: IBOutlets
    
    // MARK: VC's Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    // MARK: IBActions
    
    // MARK: Other Functions
    
    private func setup() {
        // all setup should be done here
    }
}

// MARK:- ArticleDetailViewInterface
extension ArticleDetailController: ArticleDetailViewInterface {
    
}
