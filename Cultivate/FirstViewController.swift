//
//  FirstViewController.swift
//  Cultivate
//
//  Created by Adam Mollca on 10/28/17.
//  Copyright © 2017 Cultivate Community co-op. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let title = sender.title(for: .normal)!
        
        label.text = "You clicked the \(title) button"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

