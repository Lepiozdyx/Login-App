//
//  ViewController.swift
//  LoginApp
//
//  Created by Alex on 31.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private properties
    private let userName = "User"
    private let password = "Password"
    
    // MARK: - UI View life cycle
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeValue = userNameTF.text
    }
    
    // MARK: - IB Action functions
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        if userNameTF.text != userName || passwordTF.text != password {
            getAlert(
                withTitle: "Invalid login or password!",
                andMessage: "Please, enter correct login and password"
            )
            return
        }
    }
    
    @IBAction func recallUserNameButtonTapped(_ sender: UIButton) {
        getAlert(withTitle: "Attention!", andMessage: "Your name is \(userName) 😎")
    }
    
    @IBAction func recallPasswordButtonTapped(_ sender: UIButton) {
        getAlert(withTitle: "Attention!", andMessage: "Your password is \(password) 🙉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Private methods
    private func getAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

