//
//  NewsListWireframe.swift
//  TestingEkbana
//
//  Created by manjil on 22/07/2021.
//
//

import UIKit
import BaseDesignFramework

class NewsListWireframe: BaseWireframe {
     weak var view: UIViewController!
}

extension NewsListWireframe: NewsListWireframeInput {
    var storyboardName: String {
        return ""
    }
    
    
   // var storyboardName: String {return "NewsList"}
    
    func getMainView() -> UIViewController {
       // let service = NewsListService()
        let interactor = NewsListInteractor()//(service: service)
        let presenter = NewsListPresenter(interactor: interactor)
        let viewController = NewsListController(baseView: NewsListScreen(), basePresenter: presenter)//viewControllerFromStoryboard(of: NewsListViewController.self)
        viewController.gotoArticleDetail = gotoArticle(article:)
     //   viewController.presenter = presenter
      //  interactor.output = presenter
        presenter.interactor = interactor
      //  presenter.wireframe = self
       // presenter.view = viewController
        
        self.view = viewController
        return viewController
    }
}


extension NewsListWireframe {
    func gotoArticle(article: Article) {
        view.navigationController?.pushViewController(ArticleDetailWireframe().getMainView(), animated: true)
    }
}
