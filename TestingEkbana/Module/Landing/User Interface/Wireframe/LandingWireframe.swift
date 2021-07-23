//
//  LandingWireframe.swift
//  TestingEkbana
//
//  Created by manjil on 22/07/2021.
//
//

import UIKit
import BaseDesignFramework

class BaseWireframe {
    deinit {
        debugPrint("De-Initialized --> \(String(describing: self))")
    }
}

class LandingWireframe: BaseWireframe {
     weak var view: UIViewController!
}

extension LandingWireframe: LandingWireframeInput {
   
    var storyboardName: String {
        ""
    }
    
    
   // var storyboardName: String {return "Landing"}
    
    func getMainView() -> UIViewController {
      //  let service = LandingService()
        let interactor = LandingInteractor()//(service: service)
        let presenter = LandingPresenter()
        let viewController = LandingController(baseView: LandingScreen(), basePresenter: presenter)//viewControllerFromStoryboard(of: LandingViewController.self)
        
        viewController.presenter = presenter
     // interactor.output = presenter
      //  presenter.interactor = interactor
     //   presenter.wireframe = self
      //  presenter.view = viewController
        viewController.goToOther = openNextScreen
        self.view = viewController
        return viewController
    }
    
    func openNextScreen() {
        view.navigationController?.setViewControllers([NewsListWireframe().getMainView()], animated: true)
    }
}
