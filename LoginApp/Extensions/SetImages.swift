//
//  SetBackgroundImage.swift
//  LoginApp
//
//  Created by Alex on 05.04.2023.
//

import UIKit

extension UIImageView {
    func setBackgroundImage(_ imageName: String) {
        if let image = UIImage(named: imageName) {
            self.clipsToBounds = true
            self.image = image
        }
    }
    
    func configurePhoto(with imageName: String?) {
        if let imageName = imageName {
            self.image = UIImage(named: imageName)
        }
        self.layer.cornerRadius = self.frame.height / 2
    }
}
