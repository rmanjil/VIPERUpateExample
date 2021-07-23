//
//  LandingViewController.swift
//  TestingEkbana
//
//  Created by manjil on 22/07/2021.
//
//

import UIKit
import BaseDesignFramework

class LandingController: AppBaseController {
    
    // MARK: Properties
    private var screen: LandingScreen  {
        baseView as! LandingScreen
    }
    
    private var viewModel: BaseViewModel  {
        baseViewModel //as! BaseViewModel
    }
    
    
    var presenter: LandingPresenter?
    var goToOther: (() -> Void)?
    // MARK: IBOutlets
    
    // MARK: VC's Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.goToOther?()
        }
    }
    
    // MARK: IBActions
    
    // MARK: Other Functions
    
    private func setup() {
        screen.label.text = "5000"
        // all setup should be done here
    }
}

//// MARK:- LandingViewInterface
//extension LandingController: LandingViewInterface {
//
//}
