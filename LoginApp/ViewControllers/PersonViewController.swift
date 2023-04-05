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
    
    @IBOutlet var aboutLabels: [UILabel]!
    
    var personValue: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.setBackgroundImage("backgroundImage")
        photoView.configurePhoto(with: personValue.person.photo)
        
        aboutLabels[0].text = personValue.person.firstName
        aboutLabels[1].text = personValue.person.lastName
        aboutLabels[2].text = personValue.person.age
        aboutLabels[3].text = personValue.person.maritalStatus
        aboutLabels[4].text = personValue.person.hobbies
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutVC = segue.destination as? AboutViewController else { return }
        aboutVC.bioValue = personValue
    }
 
}
