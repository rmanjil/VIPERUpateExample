//
//  ArticleDetailPresenter.swift
//  TestingEkbana
//
//  Created by manjil on 23/07/2021.
//
//

import Foundation

class ArticleDetailPresenter: BasePresenter {
    
	// MARK: Properties
    
    weak var view: ArticleDetailViewInterface?
    var interactor: ArticleDetailInteractorInput?
    var wireframe: ArticleDetailWireframeInput?

    // MARK: Converting entities
}

 // MARK: ArticleDetail module interface

extension ArticleDetailPresenter: ArticleDetailModuleInterface {
    
}

// MARK: ArticleDetail interactor output interface

extension ArticleDetailPresenter: ArticleDetailInteractorOutput {
    
}
