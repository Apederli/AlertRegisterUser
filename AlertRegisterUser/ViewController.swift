//
//  ViewController.swift
//  AlertRegisterUser
//
//  Created by aydoğan pederli on 28.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtPassword2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func alert(alertTittle:String, alertMessage:String, buttonTittle:String) {
        let alert = UIAlertController(title: alertTittle, message: alertMessage , preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: buttonTittle, style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }

    @IBAction func singUpClicked(_ sender: Any) {
        
        if txtUserName.text == "" {
            
            alert(alertTittle: "Error", alertMessage: "User Name dosen't be null", buttonTittle: "OK")
            
        }else if txtPassword.text == "" || txtPassword2.text == ""{
            
            alert(alertTittle: "Error", alertMessage: "Password dosen't be Null", buttonTittle: "OK")
            
        }else if txtPassword.text != txtPassword2.text{
            
            alert(alertTittle: "Error", alertMessage: "Passwords dosen't mach", buttonTittle: "OK")
            
        }else if txtPassword.text == txtPassword2.text{
            
            alert(alertTittle: "Success", alertMessage: "User OK", buttonTittle: "OK")
        }
        
        
    }
    
}

