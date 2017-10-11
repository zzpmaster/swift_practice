//
//  ViewController.swift
//  HelloUISwitch
//
//  Created by Zhang, Zhongpeng on 11/10/2017.
//  Copyright © 2017 zhangzp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBAction func makeAChange(_ sender: UISwitch) {
        
        if sender.isOn == true {
            print("It's on")
            view.backgroundColor = .white
        } else {
            print("It's off")
            view.backgroundColor = .black
        }
        
    }
    
    @objc func codeSwitchChange(_ sender: UISwitch) {
        if sender.isOn == true {
            print("It's on")
            view.backgroundColor = .white
        } else {
            print("It's off")
            view.backgroundColor = .black
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mySwitch.isOn = false
        makeAChange(mySwitch)

        let codeSwitch = UISwitch(frame: CGRect(x: view.frame.midX - 51/2, y: view.frame.maxY - 100, width: 51, height: 31))
        codeSwitch.isOn = true
        // 在swfit 4中不可以直接写#selector，需要@objc
        codeSwitch.addTarget(self, action: #selector(ViewController.codeSwitchChange(_:)), for: .valueChanged)
        
        view.addSubview(codeSwitch)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

