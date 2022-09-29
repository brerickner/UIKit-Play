//
//  ViewController.swift
//  TheQtrMeow
//
//  Created by Breanna Rickner on 9/28/22.
//

import UIKit

protocol LogoutDelegate: AnyObject {
    func didLogOut()
}

protocol AccountViewControllerDelegate: AnyObject {
    func didLogIn()
}


class AccountViewController: UIViewController {
    let mainScreen = AccountView()
    let signInButton = UIButton(type: .system)
    let signInError = UILabel()
    let applePayButton = UIButton(type: .system)
    let appleTapMessage = UILabel()
    //let textLabel = UILabel()
    
    weak var delegate: AccountViewControllerDelegate?

    // Get text from username and password fields
    var username: String? {
        return mainScreen.usernameTextField.text
    }
    
    var password: String? {
        return mainScreen.passwordTextField.text
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        signInButton.configuration?.showsActivityIndicator = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension AccountViewController {
    private func style() {
        mainScreen.translatesAutoresizingMaskIntoConstraints = false
        
        
        // Sign in Button
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.configuration = .filled()
        signInButton.configuration?.imagePadding = 8
        signInButton.setTitle("Sign In", for: [])
        signInButton.addTarget(self, action: #selector(signInTapped), for: .primaryActionTriggered)
        
        // Sign In Error Message
        signInError.translatesAutoresizingMaskIntoConstraints = false
        signInError.textAlignment = .center
        signInError.textColor = .systemRed
        signInError.numberOfLines = 0
        signInError.isHidden = true
        signInError.accessibilityIdentifier = "signInErrorMessage"
        
        // Apple Pay Button
        applePayButton.translatesAutoresizingMaskIntoConstraints = false
        applePayButton.configuration = .filled()
        applePayButton.configuration?.imagePadding = 8
        applePayButton.setTitle("Buy with Apple Pay", for: [])
        applePayButton.addTarget(self, action: #selector(applePayTapped), for: .primaryActionTriggered)
        
        // Apple Pay Message
        appleTapMessage.translatesAutoresizingMaskIntoConstraints = false
        appleTapMessage.textAlignment = .center
        appleTapMessage.textColor = .systemBlue
        appleTapMessage.numberOfLines = 0
        appleTapMessage.text = "Apple Pay Button Tapped"
        appleTapMessage.isHidden = true
        appleTapMessage.accessibilityIdentifier = "applePayTappedLabel"
        
        
    }
    private func layout() {
        
        // Adding Elements to Subview
        view.addSubview(mainScreen)
        view.addSubview(signInButton)
        view.addSubview(signInError)
        view.addSubview(applePayButton)
        view.addSubview(appleTapMessage)
        
        // Layout for main
        NSLayoutConstraint.activate([
            mainScreen.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainScreen.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: mainScreen.trailingAnchor, multiplier: 1)
        ])
        
        // Layout for SignIn
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalToSystemSpacingBelow: mainScreen.bottomAnchor, multiplier: 2),
            signInButton.leadingAnchor.constraint(equalTo: mainScreen.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: mainScreen.trailingAnchor)
        ])
        
        // Layout for Sign In Error Message
        NSLayoutConstraint.activate([
            signInError.topAnchor.constraint(equalToSystemSpacingBelow: signInButton.bottomAnchor, multiplier: 2),
            signInError.leadingAnchor.constraint(equalTo: signInButton.leadingAnchor),
            signInError.trailingAnchor.constraint(equalTo: signInButton.trailingAnchor)
        ])
        
        // Layout for Apple Pay Button
        NSLayoutConstraint.activate([
            applePayButton.topAnchor.constraint(equalToSystemSpacingBelow: signInError.bottomAnchor, multiplier: 2),
            applePayButton.leadingAnchor.constraint(equalTo: signInError.leadingAnchor),
            applePayButton.trailingAnchor.constraint(equalTo: signInError.trailingAnchor)
        ])
        
        // Layout for Apple Pay Tapped Message
        NSLayoutConstraint.activate([
            appleTapMessage.topAnchor.constraint(equalToSystemSpacingBelow: applePayButton.bottomAnchor, multiplier: 2),
            appleTapMessage.leadingAnchor.constraint(equalTo: applePayButton.leadingAnchor),
            appleTapMessage.trailingAnchor.constraint(equalTo: applePayButton.trailingAnchor)
        ])
        
        // Layout for Label
//        NSLayoutConstraint.activate([
//            textLabel.topAnchor.constraint(equalToSystemSpacingBelow: appleTapMessage.bottomAnchor, multiplier: 2),
//            textLabel.leadingAnchor.constraint(equalTo: appleTapMessage.leadingAnchor),
//            textLabel.trailingAnchor.constraint(equalTo: appleTapMessage.trailingAnchor)
//        ])
    }
}

// MARK: Actions
extension AccountViewController {
    // When Sign In is tapped
    @objc func signInTapped(sender: UIButton) {
        signInError.isHidden =  true
        signIn()
    }
    
    // Function when Appl Pay Button is tapped
    @objc func applePayTapped(sender: UIButton) {
        appleTapMessage.isHidden =  false
    }
    
    // Function to set username and password and check if empty
    private func signIn() {
        guard let username = username, let password = password else {
            assertionFailure("Username / password should never be nil")
            return
        }
        
        if username.isEmpty || password.isEmpty {
            configureView(withMessage: "Username/password cannot be blank")
            return
        }
        
        if username == "Bre" && password == "password" {
            signInButton.configuration?.showsActivityIndicator = true
            delegate?.didLogIn()
        } else {
            configureView(withMessage: "Incorrect username / password")
        }
        
    }
    
    // Function to display error message when signing in
    private func configureView(withMessage message: String) {
        signInError.isHidden = false
        signInError.text = message
    }
}


