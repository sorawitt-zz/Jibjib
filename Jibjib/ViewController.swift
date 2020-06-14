//
//  ViewController.swift
//  Jibjib
//
//  Created by sorawit on 13/6/2563 BE.
//  Copyright © 2563 sorawit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var profileView: ProfileView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        profileView.configure(with: "SORAWIT")
    }


}

