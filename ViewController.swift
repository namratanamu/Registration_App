//
//  ViewController.swift
//  registration new
//
//  Created by Mac on 16/09/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named:"images-7.jpeg")!)
        //TXTPASS.delegate = self
        //labelvalidatemessage.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    
    func isvalidemail(email:String) -> Bool
    {
        
        let emailRegEx = "[A-Z0-9a-z]+@[A-Za-z]+\\.[A-Za-z]{2,3}"
        //let emailRegEx  = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        let emsiltest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emsiltest.evaluate(with: email)
        
    }
    
    
    // func isvalidpass (pass:String) -> String
    //{
    //let passRegEx =/Users/mac/Documents/namu/mactest/mactest/ViewController.swift "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#`$`%^&()\\-_=+{}|?>.<,:;']{8,10}"
    //let passRegEx = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$@$!%*?&#])[A-Za-z\\d$@$!%*?&#]{6,25}"
    //let passRegEx = "([(0-9)(A-Z)(!@#$%^&*+-=<>)]+(a-z]*){6,15}"
    //let passtest = NSPredicate(format:"SELF MATCHES %@", passRegEx)
    //return passtest.evaluate(with: pass)
    //let length: Int = pass.count = 0
    //if length >= 8
    //{
    // print("klfjlsf")
    //}
    // else{
    // print("kjhfksdf")
    
    //}
    // return ""
    
    
    
    
    //}
    /*func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
     let allowedcharacters = "+1234567890\n"
     let allowedcharacerset = CharacterSet(charactersIn: allowedcharacters)
     let typed = CharacterSet(charactersIn: "")
     return allowedcharacerset.isSuperset(of: typed)
     }*/
    
    
    
    @IBOutlet weak var TXTEMAIL: UITextField!
    
    @IBOutlet weak var TXTPASS: UITextField!
    
    
    @IBOutlet weak var labelvalidatemessage: UILabel!
    @IBAction func LOGIN(_ sender: UIButton){
        
        /*guard let email = TXTEMAIL.text, TXTEMAIL.text?.String(Character.count) != 0 else{
         labelvalidatemessage.text = "lkfjsf"
         return
         
         }*/
        
        if TXTEMAIL.text!.isEmpty
        {
            
            let alert = UIAlertView()
            alert.message = "Please Enter Your Email-ID"
            //alert.addButton(withTitle: "OK")
            alert.addButton(withTitle: "Cancel")
            alert.show()
            //labelvalidatemessage.text = "Please Enter Email-ID"
        }
            
            
        else if isvalidemail(email: TXTEMAIL.text!) == false{
            //labelvalidatemessage.text = "correct email"
            let alert = UIAlertView()
            alert.title = "OOPS!! Invalid Email??"
            alert.message = "Email must be in a valid email format (eg. username@gmail.com) Please Try Again!!!"
            alert.addButton(withTitle: "Cancel")
            //alert.addButton(withTitle: "OK")
            alert.show()
        }
        else if TXTPASS.text!.isEmpty
        {
            let alert = UIAlertView()
            alert.addButton(withTitle: "Cancel")
            alert.message = "enter Enter Your password"
            
            alert.show()
        }
            
        else
        {
            let alert = UIAlertView()
            alert.message = "Enter Your Personal Details"
            //alert.addButton(withTitle: "Cancel")
            // alert.addButton(withTitle: "OK")
            //alert.show()
            let next = storyboard?.instantiateViewController(withIdentifier: "nextViewController") as! nextViewController
            navigationController?.pushViewController(next, animated: true)
            
            next.name = TXTEMAIL.text!
            
            
        }
        
        
        
        
    }
}


