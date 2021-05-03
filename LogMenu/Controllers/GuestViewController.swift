//
//  GuestViewController.swift
//  LogMenu
//
//  Created by Егор Шкарин on 29.04.2021.
//

import UIKit

class GuestViewController: UIViewController {
    @IBOutlet weak var guestNameTF: UITextField!
    @IBOutlet weak var guestSurnameTF: UITextField!
    @IBOutlet weak var tableNumberTF: UITextField!
    @IBOutlet weak var bookSwitch: UISwitch!
    @IBOutlet weak var prepaySwitch: UISwitch!
    @IBOutlet weak var vipSwitch: UISwitch!
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var timeTF: UITextField!
    lazy var user: User = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guestNameTF.text = user.Name
        guestSurnameTF.text = user.Surname
        orderButton.layer.cornerRadius = 5
        orderButton.addShadow()
        guestSurnameTF.setUnderLine()
        guestNameTF.setUnderLine()
        tableNumberTF.setUnderLine()
        timeTF.setUnderLine()
    }
    
    @IBAction func orderButtonPressed(_ sender: UIButton) {
        if !timeTF.text!.isEmpty && !tableNumberTF.text!.isEmpty
        {
                let alertController = UIAlertController(title: "Заказ", message: "Вы подтверждаете введенные данные?", preferredStyle: .alert)
                let actionOK = UIAlertAction(title: "Yes", style: .default) { (_) in
                let storyboard = UIStoryboard(name: "Main", bundle: nil);
                let vc = storyboard.instantiateViewController(withIdentifier: "OrderScreen") as! OrderViewController;
            //педача данных в поля.
                vc.nameString = self.guestNameTF.text!
                vc.table = self.tableNumberTF.text!
                vc.time = self.timeTF.text!
            // Отслеживание состояние UISwitch
                if self.bookSwitch.isOn {
                    vc.booking = true
                } else {
                    vc.booking = false
                }

                if self.vipSwitch.isOn {
                    vc.VIP = true
                } else {
                    vc.VIP = false
                }

                if self.prepaySwitch.isOn {
                    vc.prepayment = true

                } else {
                    vc.prepayment = false
                }
                self.present(vc, animated: true, completion: nil);
            }
            let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

            alertController.addAction(actionOK)
            alertController.addAction(actionCancel)

            self.present(alertController, animated: true, completion: nil)
        
        } else {
            sender.shake()
        }
    }
    
    @IBAction func unwindSegueToGuestScreen(_ segue: UIStoryboardSegue) {}
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let orderVC: OrderViewController = segue.destination as! OrderViewController
//
//        orderVC.nameString = guestNameTF.text!
//        orderVC.table = tableNumberTF.text!
//        orderVC.time = timeTF.text!
//
//        if bookSwitch.isOn {
//            orderVC.booking = true
//        } else {
//            orderVC.booking = false
//        }
//
//        if vipSwitch.isOn {
//            orderVC.VIP = true
//        } else {
//            orderVC.VIP = false
//        }
//
//        if prepaySwitch.isOn {
//            orderVC.prepayment = true
//
//        } else {
//            orderVC.prepayment = false
//        }
//
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
