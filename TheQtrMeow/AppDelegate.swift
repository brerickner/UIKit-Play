//
//  AppDelegate.swift
//  TheQtrMeow
//
//  Created by Breanna Rickner on 9/28/22.
//

import UIKit
import QMNative

let appColor: UIColor = .systemGray

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let homeViewController = HomeViewController()
    let cartViewController = CartViewController()
    let accountViewController = AccountViewController()
    let userViewController = UserViewController()
    let qaViewController = QAViewController()
    let mainViewController = MainTabBar()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        QMNative.initialize(withSubscription: "qmbrickner", uid: "e163c80f-cfae-444d-bdac-e55f1938ff0a");
        QMNative.enableTestConfig(true);
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        accountViewController.delegate = self
        userViewController.logoutDelegate = self
//        homeViewController.delegate = self
//        cartViewController.delegate = self
//        accountViewController.delegate = self
//        qaViewController.delegate = self
        
        
       // window?.rootViewController = TextLabelsViewController()
        window?.rootViewController = qaViewController

        return true
    }
}

extension AppDelegate: AccountViewControllerDelegate {
    func didLogIn() {
        setRootViewController(userViewController)
        print("meow - Did login")
    }
}
extension AppDelegate: LogoutDelegate {
    func didLogOut() {
        setRootViewController(mainViewController)
    }
}
extension AppDelegate {
    func setRootViewController(_ vc: UIViewController, animated: Bool = true) {
        guard animated, let window = self.window else {
            self.window?.rootViewController = vc
            self.window?.makeKeyAndVisible()
            return
        }
        
        window.rootViewController = vc
        window.makeKeyAndVisible()
        UIView.transition(with: window, duration: 0.3, options: .transitionCrossDissolve, animations: nil, completion: nil)
    }
}
