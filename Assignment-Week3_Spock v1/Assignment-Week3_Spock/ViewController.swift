//
//  ViewController.swift
//  Assignment-Week3_Spock
//
//  Created by Spoke on 2018/7/21.
//  Copyright © 2018年 Spoke. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var accountTxtField: UITextField!
    @IBOutlet weak var passwordTxtFiels: UITextField!
    @IBOutlet weak var checkTxtField: UITextField!
    
    var account: String?
    var password: Int?
    var check: Int?
    var currentSelection: Int = 0

    override func viewDidLoad() {
    }
    
    
    // 0 Log in, 1 Sign up
    @IBAction func segmentSwitch() {
        
        // Log in
        if segment.selectedSegmentIndex == 0 {
            
            checkLabel.textColor = UIColor.lightGray
            checkTxtField.isEnabled = false
            checkTxtField.backgroundColor = UIColor.lightGray
            currentSelection = 0
            
            // Sign up
        } else {
            checkLabel.textColor = UIColor.black
            checkTxtField.backgroundColor = UIColor.white
            checkTxtField.isEnabled = true
            currentSelection = 1
        }
        cleanTxtField()
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        if accountTxtField.text == "" {
            shoeAlertWith(message: "Account shoult not be empty")
        } else if passwordTxtFiels.text == "" {
            shoeAlertWith(message: "Password should not be empty")
        } else if checkTxtField.text == "" && currentSelection == 1 {
            print(currentSelection)
            shoeAlertWith(message: "Check Password should not be empty")
        } else {
            print("All Input Not Empty")
            executeMethod(selection: currentSelection, account: accountTxtField.text!, password: passwordTxtFiels.text!, check: checkTxtField.text)
        }
    }
    
    
    func shoeAlertWith(title: String = "Error", message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }

    
    func cleanTxtField() {
        accountTxtField.text = ""
        passwordTxtFiels.text = ""
        checkTxtField.text = ""
    }
    
    
    func executeMethod(selection: Int, account: String, password: String, check: String?) {
        if selection == 0 {
            if account == "luke@gmail.com" && password == "1234" {
                shoeAlertWith(title: "Success", message: "Login Success")
                cleanTxtField()
            } else {
                shoeAlertWith(message: "Login Fail")
            }
            
        } else {
            if password != check {
                shoeAlertWith(message: "Signup fail")
            } else {
                shoeAlertWith(title: "Success", message: "Signup Success")
                userSignupInfo(account: account, password: password)
                cleanTxtField()
            }
        }
    }
    
    func userSignupInfo(account: String, password: String) {
        print("Account: \(account)\nPassword: \(password)")
    }
    
    

}

