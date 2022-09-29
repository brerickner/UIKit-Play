//
//  MainView.swift
//  TheQtrMeow
//
//  Created by Breanna Rickner on 9/28/22.
//
import UIKit

class MainTabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupTabBar()
    }
    
    private func setupViews() {
        let homeVC = HomeViewController()
        let cartVC = CartViewController()
        let accountVC = AccountViewController()
        let qaVC = QAViewController()
        
        homeVC.setTabBarImage(imageName: "homekit", title: "Home")
        cartVC.setTabBarImage(imageName: "cart", title: "Cart")
        accountVC.setTabBarImage(imageName: "person", title: "Account")
        qaVC.setTabBarImage(imageName: "ladybug", title: "QA")
        
        let homeNC = UINavigationController(rootViewController: homeVC)
        let cartNC = UINavigationController(rootViewController: cartVC)
        let accountNC = UINavigationController(rootViewController: accountVC)
        let qaNC = UINavigationController(rootViewController: qaVC)
        
        homeNC.navigationBar.barTintColor = appColor
        hideNavigationBarLine(homeNC.navigationBar)
        
        let tabBarList = [homeNC, cartNC, accountNC, qaNC]
        viewControllers = tabBarList
    }
    private func hideNavigationBarLine(_ navigationBar: UINavigationBar) {
        let img = UIImage()
        navigationBar.shadowImage = img
        navigationBar.setBackgroundImage(img, for: .default)
        navigationBar.isTranslucent = false
    }
    private func setupTabBar() {
        tabBar.tintColor = appColor
        tabBar.isTranslucent = false
    }
}

