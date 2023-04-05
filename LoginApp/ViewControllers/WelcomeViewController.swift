//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Alex on 31.03.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var backgroundView: UIImageView!
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var greetingsLabel: UILabel!
    
    
    var welcomeValue: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.setBackgroundImage("backgroundImage")
        welcomeLabel.text = "Hello, \(welcomeValue.userName)!"
        greetingsLabel.text = "\(welcomeValue.person.firstName) glad to see you!"
    }
    
}
