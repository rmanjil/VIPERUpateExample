//
//  LandingPresenter.swift
//  TestingEkbana
//
//  Created by manjil on 22/07/2021.
//
//

import Foundation
import Combine

class BasePresenter {
    var bag = Set<AnyCancellable>()
    
    
    deinit {
        debugPrint("De-Initialized --> \(String(describing: self))")
    }
}

class LandingPresenter: BasePresenter {
    
	// MARK: Properties
    
   // weak var view: LandingViewInterface?
  //  var interactor: LandingInteractorInput?
   // var wireframe: LandingWireframeInput?

    // MARK: Converting entities
}

 // MARK: Landing module interface

//extension LandingPresenter: LandingModuleInterface {
//    
//}

// MARK: Landing interactor output interface

//extension LandingPresenter: LandingInteractorOutput {
//
//}
