//
//  NewsListPresenter.swift
//  TestingEkbana
//
//  Created by manjil on 22/07/2021.
//
//

import Foundation
import Combine

class NewsListPresenter: BasePresenter {
    
	// MARK: Properties
 
    
  //  weak var view: NewsListViewInterface?
    var interactor: NewsListInteractor
  //  var wireframe: NewsListWireframeInput?
    init(interactor: NewsListInteractor ) {
        self.interactor = interactor
    }

  
    func callApi() {
        let parameter = ["country": "us"]
        interactor.request(router: NewsRouter.headline(parameter))
    }
}

 // MARK: NewsList module interface

//extension NewsListPresenter: NewsListModuleInterface {
//
//}
//
//// MARK: NewsList interactor output interface
//
//extension NewsListPresenter: NewsListInteractorOutput {
//
//}
