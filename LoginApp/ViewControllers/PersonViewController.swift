//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Alex on 04.04.2023.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIImageView!
    @IBOutlet var photoView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    var personValue: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.setBackgroundImage("backgroundImage")
        photoView.configurePhoto(with: personValue.person.photo)
        
        nameLabel.text = "Name: \(personValue.person.fullName)"
        ageLabel.text = "Age: \(personValue.person.age)"
        statusLabel.text = "Marital status: \(personValue.person.maritalStatus)"
        hobbyLabel.text = "Hobby: \(personValue.person.hobbies)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutVC = segue.destination as? AboutViewController else { return }
        aboutVC.bioValue = personValue
    }
 
}
