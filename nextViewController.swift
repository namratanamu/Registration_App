//
//  nextViewController.swift
//  registration new
//
//  Created by Mac on 16/09/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class nextViewController: UIViewController {

    var name = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //age.delegate = self
        email.text = name
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var f_name: UITextField!
    
    @IBOutlet weak var l_name: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    
    @IBOutlet weak var age: UITextField!
    
    
    /*func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
     let allowedCharachers = "+1234567890\n"
     let allowedCharacherset = CharacterSet(charactersIn: allowedCharachers)
     let typedcharacharset = CharacterSet(charactersIn:String)
     return allowedCharachers.isSuperset(of: typedcharacharset )
     }*/
    
    
    
    
    @IBAction func submit(_ sender: UIButton) {
        
        if f_name.text!.isEmpty
        {
            let alert = UIAlertView()
            alert.message = "Please Enter First Name"
            //alert.addButton(withTitle: "OK")
            alert.addButton(withTitle: "Cancel")
            alert.show()
            
        }
        else if l_name.text!.isEmpty
        {
            let alert = UIAlertView()
            alert.message = "Please Enter Last Name"
            alert.addButton(withTitle: "Cancel")
            alert.show()
            
        }
        else if age.text!.isEmpty
        {
            let alert = UIAlertView()
            alert.message = "Please Enter Age"
            //alert.addButton(withTitle: "OK")
            alert.addButton(withTitle: "Cancel")
            alert.show()
            
            
        }
        else
        {
            let next = storyboard?.instantiateViewController(withIdentifier: "next1ViewController") as! next1ViewController
            navigationController?.pushViewController(next, animated: true)
            
            
            
        }
        
        
        
        
        
        
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
