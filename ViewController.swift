//
//  ViewController.swift
//  Is It Prime
//
//  Created by Vilde Vevatne on 19/04/2017.
//  Copyright © 2017 Vilde Vevatne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultText: UILabel!
    @IBOutlet var userInput: UITextField!
    @IBAction func buttonPressed(_ sender: Any) {
        if let userEnteredString = userInput.text {
            let userEnteredInteger = Int(userEnteredString)
            if let number = userEnteredInteger {
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                var i = 2
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                    }
                    i += 1
                }
                if isPrime {
                    resultText.text = "\(number) is prime!"
                } else {
                    resultText.text = "\(number) is not prime"
                }
            }
        }
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

