//
//  LoginControllerViewController.swift
//  Cultivate
//
//  Created by Adam Mollca on 11/4/17.
//  Copyright © 2017 Cultivate Community co-op. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func login(_ sender: UIButton) {
        //lowers keyboard
        self.id.resignFirstResponder()
        self.password.resignFirstResponder()
        
        var cancel = false
        
        if id.text!.isEmpty {
            cancel = true
        }
        
        if cancel {
            
        }else{
            
        }
    }
    
    //checks if id is valid
    private func isIdValid(id: String) -> Bool{
        //TODO
        return true
    }
    
    //checks if password is valid
    private func isPasswordValid(password: String) -> Bool{
        //TODO
        return true
    }
    
    //lowers keyboard on touching background
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
 
    

}
