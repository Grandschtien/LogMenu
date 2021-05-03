//
//  ViewController.swift
//  LogMenu
//
//  Created by Егор Шкарин on 28.04.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    lazy var user: User = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 5
        loginButton.addShadow()
        loginTextField.setUnderLine()
        passwordTextField.setUnderLine()
       
    }
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        guard let login = loginTextField.text, let password = passwordTextField.text else {return}
        if user.checkPasswordAndLogin(login: login, password: password) && !login.isEmpty && !password.isEmpty{
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let vc = storyboard.instantiateViewController(withIdentifier: "GuestScreen") as! GuestViewController;
            self.present(vc, animated: true, completion: nil);
        }
        else {
            sender.shake()
        }
    }
    
    @IBAction func unwindSegueToLoginScreen(_ segue: UIStoryboardSegue) {
        
    }
}

extension UIView {
  func addShadow() {
    self.layer.shadowColor = UIColor.black.cgColor
    self.layer.shadowOffset = CGSize(width: -1, height: 2)
    self.layer.shadowRadius = 1.8
    self.layer.shadowOpacity = 0.3
  }
}
extension UITextField {

    func setUnderLine() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: self.frame.height - 1, width: self.frame.width, height: 1.0)
        bottomLine.backgroundColor = #colorLiteral(red: 1, green: 0.4288682241, blue: 0.4838169328, alpha: 1).cgColor
        self.borderStyle = UITextField.BorderStyle.none
        self.layer.addSublayer(bottomLine)
    }

}

extension UIButton {

    func shake() {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.duration = 0.6
        animation.values = [-20.0, 20.0, -20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0.0 ]
        layer.add(animation, forKey: "shake")
    }

}
