//
//  MainTabController.swift
//  TwitterApp
//
//  Created by Роман Елфимов on 12.10.2021.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Properties
    
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .twitterBlue
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewControllers()
        configureUI()
        
        // IOS 15 changes
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.backgroundColor = .systemBackground
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
    
    
    // MARK: - Selectors
    
    @objc func actionButtonTapped() {
        print(123)
    }
    
    
    // MARK: - Heplers
    
    func configureUI() {
        view.addSubview(actionButton)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 56 / 2
    }
    
    
    func configureViewControllers() {
        
        let feedVC = generateNavigationController(rootViewController: FeedController(),
                                                  image: UIImage(named: "home_unselected")!)
        
        let exploreVC = generateNavigationController(rootViewController: ExploreController(),
                                                     image: UIImage(named: "search_unselected")!)
        let notificationsVC = generateNavigationController(rootViewController: NotificationsController(),
                                                           image: UIImage(named: "like_unselected")!)
        let conversationVC = generateNavigationController(rootViewController: ConversationController(),
                                                          image: UIImage(named: "ic_mail_outline_white_2x-1")!)
        
        viewControllers = [feedVC, exploreVC, notificationsVC, conversationVC]
    }
    
    
    // MARK: - Private Methods
    
    private func generateNavigationController(rootViewController: UIViewController, image: UIImage) -> UIViewController {
        
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.image = image
        navigationVC.navigationBar.barTintColor = .white
        
        // IOS 15 changes
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = .systemBackground
        navigationVC.navigationBar.standardAppearance = navBarAppearance
        navigationVC.navigationBar.scrollEdgeAppearance = navBarAppearance
        
        return navigationVC
    }
}
