//
//  ViewController.swift
//  NumberLock
//
//  Created by Zhang, Zhongpeng on 28/08/2017.
//  Copyright © 2017 zhangzp. All rights reserved.
//

import UIKit
// 获取随机数 需要导入game kit
import GameKit

class ViewController: UIViewController {

    var answer = GKRandomSource.sharedRandom().nextInt(upperBound: 100) + 1
    var maxNumber = 100
    var minNumber = 1
    var isOver = false;
    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func makeGuess(_ sender: UIButton) {
        
        if isOver == true {
            isOver = false
            minNumber = 1
            maxNumber = 100
            messageLabel.text = "Guess a number between \(minNumber) ~ \(maxNumber)"
            answer = GKRandomSource.sharedRandom().nextInt(upperBound: 100) + 1
            background.image = UIImage(named: "BG")
            return
        }
        
        print(answer)
        
        let inputText = inputTextField.text!
        
        inputTextField.text = ""
        
        let inputNum = Int(inputText)
        if inputNum == nil {
            // error
//            print("wrong input")
            messageLabel.text = "No input! Guess a number between \(minNumber) ~ \(maxNumber)"
        } else {
            
            if inputNum! > maxNumber {
//                print("too large")
                messageLabel.text = "Too large! Guess a number between \(minNumber) ~ \(maxNumber)"
            } else if inputNum! < minNumber {
//                print("too small")
                messageLabel.text = "Too small! Guess a number between \(minNumber) ~ \(maxNumber)"
            } else if inputNum! == answer {
                messageLabel.text = "You are right, Press [Guess] to play again!"
                isOver = true
                background.image = UIImage(named: "Finish")
            } else {
                
                if inputNum! > answer {
                    maxNumber = inputNum!
                } else {
                    minNumber = inputNum!
                }
                messageLabel.text = "Try again! Guess a number between \(minNumber) ~ \(maxNumber)"
            }
            
        }
        
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
    
    


}

