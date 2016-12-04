//
//  ViewController.swift
//  thirdTry
//
//  Created by West Kraemer on 12/4/16.
//  Copyright © 2016 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var fingersTextField: UITextField!
    
    @IBAction func guess(_ sender: Any) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if fingersTextField.text == diceRoll {
            
            resultLabel.text = "You guessed right!"
            
        } else {
            resultLabel.text = "Wrong! It was " + diceRoll + "."
        }
        
    }
    
    
    @IBOutlet var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

