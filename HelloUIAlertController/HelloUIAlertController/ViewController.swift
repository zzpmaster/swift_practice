//
//  ViewController.swift
//  HelloUIAlertController
//
//  Created by Zhang, Zhongpeng on 20/10/2017.
//  Copyright © 2017 zhangzp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showAlert(_ sender: UIButton) {
//        let myAlert = UIAlertController(title: "Hello", message: "How are you?", preferredStyle: .alert)
        let myAlert = UIAlertController(title: "Hello", message: "How are you?", preferredStyle: .actionSheet)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { (action: UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
        }
        
        let helloAction = UIAlertAction(title: "Say Hello", style: .destructive) { (action: UIAlertAction) in
            print("say hello!")
            self.dismiss(animated: true, completion: nil)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action: UIAlertAction) in
            print("cancel!")
            self.dismiss(animated: true, completion: nil)
        }
        
        myAlert.addAction(okAction)
        myAlert.addAction(helloAction)
        myAlert.addAction(cancelAction)
        
        present(myAlert, animated: true, completion: nil)
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

