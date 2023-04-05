//
//  AboutViewController.swift
//  LoginApp
//
//  Created by Alex on 04.04.2023.
//

import UIKit

final class AboutViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIImageView!
    
    @IBOutlet var textAboutMe: UITextView!
    
    var bioValue: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.setBackgroundImage("backgroundImage")
        textAboutMe.text = bioValue.person.biography
    }
    
}
