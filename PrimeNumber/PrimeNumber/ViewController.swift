//
//  ViewController.swift
//  PrimeNumber
//
//  Created by Zhang, Zhongpeng on 19/09/2017.
//  Copyright © 2017 zhangzp. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func goButton(_ sender: UIButton) {
        if let inputText = inputTextField.text {
            if let inputNumber = Int(inputText) {
                // 简写
                checkPrime(withNumber: inputNumber) {
                    self.resultLabel.text = $0
                    self.resultLabel.isHidden = false
                }
//                checkPrime(withNumber: inputNumber, andCompletionHandler: { (result) in
//
//                })
            }
        }
        inputTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inputTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkPrime(testNumber: Int) -> String {
        
        var isPrime: Bool? = true
        
        if (testNumber <= 0) {
            isPrime = nil
        } else if (testNumber == 1) {
            isPrime = false
        } else {
            for i in 2..<testNumber {
                if testNumber % i == 0 {
                    isPrime = false
                    break
                }
            }
        }
        
        if (isPrime == true) {
            return "\(testNumber) is prime"
        } else if (isPrime == false) {
            return "\(testNumber) is not prime"
        } else {
            return "Please enter a number greater than 0"
        }
    }
    
    func checkPrime(withNumber number: Int, andCompletionHandler handler: (String) -> ()) {
        handler(checkPrime(testNumber: number))
    }


}

