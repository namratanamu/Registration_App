//
//  next1ViewController.swift
//  registration new
//
//  Created by Mac on 16/09/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit
let cityname = ["pune","mumbai","satara"]
var  picker:UIPickerView = UIPickerView()

class next1ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        picker.delegate = self
        picker.dataSource = self
        city.inputView = picker
    textmob.delegate = self as UITextFieldDelegate
        
        
        
        
        
        
        datepicker = UIDatePicker()
        datepicker.datePickerMode = .date
        datepicker.addTarget(self,action: #selector(next1ViewController.datechanged(datepicker:)), for: .valueChanged )
        textdate.inputView = datepicker
        
        
        
        
        
        // Do ny additional setup after loading the view.
    }
    
    
    @IBOutlet weak var city: UITextField!
    
    //@IBOutlet weak var labelname: UILabel!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return cityname.count
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return cityname[row]
        
    }
    private func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, forComponent component: Int) -> String? {
        
        city.text = cityname[row]
        //self.view.endEditing(false)
        //return genderfeild.text
        return ""
        
    }
    
    
    
    @IBOutlet weak var address: UITextField!
    
    @IBOutlet weak var textdate: UITextField!
    
    
    private var  datepicker:UIDatePicker!
    //private var pickerview:UIPickerView!
    
    @objc func   datechanged(datepicker:UIDatePicker)
        
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        textdate.text = dateFormatter.string(from: datepicker.date)
        view.endEditing(true)
        
    }
    @IBOutlet weak var textmob: UITextField!
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedcharacters = "+1234567890\n"
        let allowedcharacterset = CharacterSet(charactersIn: allowedcharacters)
        let typedcharacterset = CharacterSet(charactersIn: string)
        return allowedcharacterset.isSuperset(of: typedcharacterset)
    }
    
    
    
    @IBAction func submit(_ sender: UIButton) {
        
        if textmob.text!.isEmpty
        {
            let alert = UIAlertView()
            alert.message = "Please Enter Your Mobile-No"
            //alert.addButton(withTitle: "OK")
            alert.addButton(withTitle: "Cancel")
            alert.show()
            //labelvalidatemessage.text = "Please Enter Email-ID"
        }
        else if address.text!.isEmpty
        {
            let alert = UIAlertView()
            alert.message = "Please Enter Your Address"
            //alert.addButton(withTitle: "OK")
            alert.addButton(withTitle: "Cancel")
            alert.show()
            //labelvalidatemessage.text = "Please Enter Email-ID"
        }
        else
        {
            let next = storyboard?.instantiateViewController(withIdentifier: "Next2ViewController") as! Next2ViewController
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
