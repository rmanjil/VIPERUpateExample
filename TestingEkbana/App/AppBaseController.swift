//
//  AppBaseController.swift
//  TestingEkbana
//
//  Created by manjil on 22/07/2021.
//

import UIKit
import BaseDesignFramework

class AppBaseController: BaseController {
    let  basePresenter: BasePresenter
  
    init(baseView: BaseView, basePresenter: BasePresenter) {
        self.basePresenter = basePresenter
        super.init(baseView: baseView, baseViewModel: BaseViewModel())
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   

    deinit {
        debugPrint("De-Initialized --> \(String(describing: self))")
    }

}
