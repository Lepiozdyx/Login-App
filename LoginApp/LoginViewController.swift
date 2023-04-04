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
    private let userName = "Alexey"
    private let password = "Pass"
    
    // MARK: - UI View life cycle
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeValue = userName
    }
    
    // MARK: - IB Action functions
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        if userNameTF.text != userName || passwordTF.text != password {
            getAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
  
    @IBAction func recallUserData(_ sender: UIButton) {
        sender.tag == 0
            ? getAlert(title: "Suddenly!", message: "Your name is \(userName) 😎")
            : getAlert(title: "Attention!", message: "Your password is \(password) 🫣")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Private methods
    private func getAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

