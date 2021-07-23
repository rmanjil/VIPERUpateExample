//
//  NewsListViewController.swift
//  TestingEkbana
//
//  Created by manjil on 22/07/2021.
//
//

import UIKit
import Combine
import BaseDesignFramework

class NewsListController: AppBaseController {
    
    // MARK: Properties
    private var screen: NewsListScreen  {
        baseView as! NewsListScreen
    }
    
//    private var viewModel: <#ViewMode#>  {
//        baseViewModel as! <#ViewMode#>
//    }
    
    
  //  var presenter: NewsListModuleInterface?
    var presenter:  NewsListPresenter {
        basePresenter as! NewsListPresenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        presenter.callApi()
    
    }
    
   
    // MARK: - override
    
    override func setupUI() {
        setUpTableView()
    }
    override func observeEvents() {
        presenter.interactor.$articles.receive(on: RunLoop.main).sink { [weak self] _ in
            self?.screen.tableView.reloadData()
           // self?.screen.indicate = false
        }.store(in: &presenter.bag)
      
    }
}




//// MARK:- NewsListViewInterface
//extension NewsListController: NewsListViewInterface {
//
//}

extension NewsListController: UITableViewDelegate, UITableViewDataSource {
    private func setUpTableView() {
        screen.tableView.delegate = self
        screen.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.interactor.articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(ArticleCell.self, for: indexPath)
        cell.articleModel = presenter.interactor.articles[indexPath.row]
        cell.delegate = self
        return cell
        
    }
}

extension NewsListController: ArticleSelection {
    func selectedArticle(article: Article) {
      //  viewModel.trigger.send(AppRoute.articleDetail(article:  article))
    }
}
