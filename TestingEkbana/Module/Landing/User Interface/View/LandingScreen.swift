//
//  LandingScreen.swift
//  TestingEkbana
//
//  Created by manjil on 22/07/2021.
//
//

import UIKit

class LandingScreen: AppScreen {
    
    private(set) lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1000"
        
        return label
    }()
    
    // MARK: Other Functions
    override func createDesign() {
        super.createDesign()
        
        addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor , constant: 16),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
        
    }
     
}

