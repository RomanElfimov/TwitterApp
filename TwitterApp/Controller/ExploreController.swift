//
//  ExploreController.swift
//  TwitterApp
//
//  Created by Роман Елфимов on 12.10.2021.
//

import UIKit

class ExploreController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    // MARK: - Heplers
    
    func configureUI() {
        
        view.backgroundColor = .white
        navigationItem.title = "Explore"
    }
}
