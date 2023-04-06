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
        
        let personProperties: [String: String] = [
            "name": personValue.person.firstName,
            "surname": personValue.person.lastName,
            "age": personValue.person.age,
            "status": personValue.person.maritalStatus,
            "hobbies": personValue.person.hobbies
        ]
        
        var index = 0
        personProperties.values.forEach { value in
            aboutLabels[index].text = value
            index += 1
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutVC = segue.destination as? AboutViewController else { return }
        aboutVC.bioValue = personValue
    }
 
}
