//
//  ViewController.swift
//  SocialMedia
//
//  Created by Mehmet Serhat Gültekin on 30.06.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationItem.hidesBackButton = true
        
        logInButton.layer.cornerRadius = logInButton.frame.height / 4
    }


}

