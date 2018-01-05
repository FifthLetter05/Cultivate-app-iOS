//
//  LoginControllerViewController.swift
//  Cultivate
//
//  Created by Adam Mollca on 11/4/17.
//  Copyright © 2017 Cultivate Community co-op. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func login(_ sender: UIButton) {
        //lowers keyboard
        email.resignFirstResponder()
        password.resignFirstResponder()
        
        //checks if info is valid before checking
        var cancel = false
        
        let title = "Error"
        
        if email.text!.isEmpty {
            alertWithTitle(title, "This field is required", email, ViewController: self)
            cancel = true
        } else if !isEmailValid(email.text!){
            alertWithTitle(title, "The email address is invalid", email, ViewController: self)
            cancel = true
        }
        
        if !isPasswordValid(password.text!){
            alertWithTitle(title, "The password is incorrect", password, ViewController: self)
            cancel = true
        }
        
        if !cancel {
            
        }
    }
    
    private func checkWithServer(email: String, password: String){
        //TODO
        
    }
    
    private func alertWithTitle(_ title: String!, _ message: String, _ focus: UIView, ViewController: UIViewController){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK!", style: .cancel, handler: { (UIAlertAction) -> Void in
            focus.becomeFirstResponder()
        })
        alert.addAction(action)
        ViewController.present(alert, animated: true, completion: nil)
    }
    
    //checks if id is valid
    private func isEmailValid(_ id: String) -> Bool{
        if id.contains("@"){
            return false
        }
        return true
    }
    
    //checks if password is valid
    private func isPasswordValid(_ password: String) -> Bool{
        if password.isEmpty{
            return false
        }
        return true
    }
    
    //lowers keyboard on touching background
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
 
    

}
