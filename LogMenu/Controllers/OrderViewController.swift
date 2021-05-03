//
//  OrderViewController.swift
//  LogMenu
//
//  Created by Егор Шкарин on 02.05.2021.
//

import UIKit

class OrderViewController: UIViewController {
    @IBOutlet weak var OKbutton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tableLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var bookingLabel: UILabel!
    @IBOutlet weak var prepaymentLabel: UILabel!
    @IBOutlet weak var vipLabel: UILabel!
    
    
    
    var nameString: String = ""
    var time: String = ""
    var table: String = ""
    var VIP: Bool = false
    var prepayment: Bool = false
    var booking: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        OKbutton.layer.cornerRadius = 5
        OKbutton.addShadow()
        nameLabel.text = nameString
        tableLabel.text = table
        timeLabel.text = time
        if booking == true{
            bookingLabel.text = "Yes"
        } else {
            bookingLabel.text = "No"
        }
        if prepayment == true {
            prepaymentLabel.text = "Yes"
        } else {
            prepaymentLabel.text = "No"
        }
        if VIP == true {
            vipLabel.text = "Yes"
        } else {
            vipLabel.text = "No"
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func OkButtonPressed(_ sender: UIButton) {/* отправка в модель и на сервер */}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
