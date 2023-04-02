//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Alex on 31.03.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Hello, \(welcomeValue!)!"
    }
    
}
