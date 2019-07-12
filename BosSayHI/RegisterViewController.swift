//
//  RegisterViewController.swift
//  BosSayHI
//
//  Created by Pramahadi Tama Putra on 12/07/19.
//  Copyright © 2019 Fauzi. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var fullnameTF: CustomTextField!
    
    @IBOutlet weak var emailTF: CustomTextField!
    
    @IBOutlet weak var passwordTF: CustomTextField!
    
    @IBOutlet weak var rePasswordTF: CustomTextField!
    
    @IBOutlet weak var phoneTF: CustomTextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        fullnameTF.placeholder = "   Fullname"
        fullnameTF.setIcon(UIImage(named: "user-black")!)
        emailTF.placeholder = "   E-Mail"
        emailTF.setIcon(UIImage(named: "email-white")!)
        passwordTF.placeholder = "   Password"
        passwordTF.setIcon(UIImage(named: "password-white")!)
        rePasswordTF.placeholder = "   Confirm Password"
        rePasswordTF.setIcon(UIImage(named: "cpassword")!)
        phoneTF.placeholder = "  Phone Number"
        phoneTF.setIcon(UIImage(named: "phone")!)
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
