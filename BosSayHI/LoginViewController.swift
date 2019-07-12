//
//  LoginViewController.swift
//  BosSayHI
//
//  Created by Pramahadi Tama Putra on 12/07/19.
//  Copyright © 2019 Fauzi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBtn.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        // Do any additional setup after loading the view.
        emailTF.placeholder = "  Your E-mail"
        passwordTF.placeholder = "  Your Password"
        emailTF.setIcon(UIImage(named: "email-white")!)
        passwordTF.setIcon(UIImage(named: "password-white")!)
        
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
