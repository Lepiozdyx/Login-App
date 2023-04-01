//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Alex on 31.03.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    var welcomeValue: String!

    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Hello, \(welcomeValue!)!"
    }
    
}
