//
//  ArticleDetailWireframe.swift
//  TestingEkbana
//
//  Created by manjil on 23/07/2021.
//
//

import UIKit
import BaseDesignFramework

class ArticleDetailWireframe {
     weak var view: UIViewController!
}

extension ArticleDetailWireframe: ArticleDetailWireframeInput {
    var storyboardName: String {
        ""
    }
    
    
   // var storyboardName: String {return "ArticleDetail"}
    
    func getMainView() -> UIViewController {
        let service = ArticleDetailService()
        let interactor = ArticleDetailInteractor(service: service)
        let presenter = ArticleDetailPresenter()
        let viewController = ArticleDetailController(baseView: ArticleDetailScreen(), basePresenter: presenter)  //viewControllerFromStoryboard(of: ArticleDetailViewController.self)
        
       // viewController.presenter = presenter
        interactor.output = presenter
        presenter.interactor = interactor
        presenter.wireframe = self
       // presenter.view = viewController
        
        self.view = viewController
        return viewController
    }
}
