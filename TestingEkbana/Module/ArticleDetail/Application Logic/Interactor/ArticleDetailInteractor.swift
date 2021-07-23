//
//  ArticleDetailInteractor.swift
//  TestingEkbana
//
//  Created by manjil on 23/07/2021.
//
//

import Foundation

class ArticleDetailInteractor {
    
	// MARK: Properties
    
    weak var output: ArticleDetailInteractorOutput?
    private let service: ArticleDetailServiceType
    
    // MARK: Initialization
    
    init(service: ArticleDetailServiceType) {
        self.service = service
    }

    // MARK: Converting entities
}

// MARK: ArticleDetail interactor input interface

extension ArticleDetailInteractor: ArticleDetailInteractorInput {
    
}
