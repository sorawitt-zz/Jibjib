//
//  ProfileView.swift
//  Jibjib
//
//  Created by sorawit on 13/6/2563 BE.
//  Copyright © 2563 sorawit. All rights reserved.
//

import UIKit

class ProfileView: BaseNibView {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var fullnameLabel: UILabel!
    
    func configure(with name: String) {
        fullnameLabel.text = name
    }
}
