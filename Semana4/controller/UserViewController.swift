//
//  UserViewController.swift
//  Semana4
//
//  Created by MAC35 on 23/09/22.
//

import UIKit

class UserViewController: UIViewController {
    let userViewModel: UserViewModel = UserViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtlastname: UITextField!
    @IBOutlet weak var txtbirthday: UITextField!
    @IBOutlet weak var txtphonenumber: UITextField!
    @IBOutlet weak var txtaddress: UITextField!
    
    @IBAction func OnTabName(_ sender: Any) {
        let user : User = User(
            name : txtname.text!,
            lastname : txtlastname.text!,
            birthday : txtbirthday.text!,
            phonenumber : txtphonenumber.text!,
            address : txtaddress.text!
        )
        txtname.text = ""
        txtlastname.text = ""
        txtbirthday.text = ""
        txtphonenumber.text = ""
        txtaddress.text = ""
        
        userViewModel.createUser(user:user)
        
    }
    
    
    @IBAction func onTabListUser(_ sender: Any) {
        let users : [User] = userViewModel.getUser()
        print("users \(users)")
    }
}
