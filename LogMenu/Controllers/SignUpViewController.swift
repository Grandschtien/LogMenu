//
//  SignUpViewController.swift
//  LogMenu
//
//  Created by Егор Шкарин on 29.04.2021.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var surnameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpButton.layer.cornerRadius = 5
        signUpButton.addShadow()
        nameTF.setUnderLine()
        surnameTF.setUnderLine()
        emailTF.setUnderLine()
        passwordTF.setUnderLine()
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        let _ = User()
        // Тут нужно будет сделать передачу данных о пользователе в бд какую нибудь или в что нибудь подобное.
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
