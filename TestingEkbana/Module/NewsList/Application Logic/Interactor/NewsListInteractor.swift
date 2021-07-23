//
//  NewsListInteractor.swift
//  TestingEkbana
//
//  Created by manjil on 22/07/2021.
//
//

import Foundation
import Combine
class BaseInteractor {
    deinit {
        debugPrint("De-Initialized --> \(String(describing: self))")
    }
}

typealias Parameter = [String: Any]

class NewsListInteractor: BaseInteractor {
    
 
        var bag = Set<AnyCancellable>()
        @Published var articles: [Article] = []
        let isApicall = PassthroughSubject<Bool,Never>()
        let networking = Networking()
        
        func request(router: Routable) {
            isApicall.send(true)
            networking.request(router: router).sink { [weak self] result in
                guard let self = self else {  return }
                self.isApicall.send(false)
                self.parseResult(result: result, router: router)
            }.store(in: &bag)
        }
        
        
        private func parseResult(result: NetworkingResult, router: Routable)  {
            switch router {
            case NewsRouter.headline:
                if !result.object.isEmpty,
                   let articleJson = result.object["articles"] as? [Parameter]
                {
                    let articles = DataMapper<Article>.arrayMapping(articleJson)
                    print(articles)
                    self.articles =  articles
                }
                break
            default:
                break
            }
            
        }
    
}

// MARK: NewsList interactor input interface

//extension NewsListInteractor: NewsListInteractorInput {
//    
//}
