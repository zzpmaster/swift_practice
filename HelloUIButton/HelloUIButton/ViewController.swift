//
//  ViewController.swift
//  HelloUIButton
//
//  Created by Zhang, Zhongpeng on 20/10/2017.
//  Copyright © 2017 zhangzp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttnPressed(_ sender: UIButton) {
        print("Hello world")
    }
    
    @objc func hitMe(_ thisButton: UIButton) {
        print("Yo! What's up")
    }
    
    // 闭包，省略参数和in，指定类型
    let codeButton: UIButton = {
        // system button
        let newButton = UIButton(type: .system)
        newButton.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        newButton.setTitle("Press", for: .normal)
        newButton.setTitle("Pressing", for: .highlighted)
        newButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), for: .touchUpInside)
        return newButton
    }()
    
    func setUpUI() {
        view.addSubview(self.codeButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.setUpUI()
        
        // image button
        let otherButton = UIButton(type: .custom)
        otherButton.frame = CGRect(x: 100, y: 100, width: 114, height: 54)
        otherButton.setImage(UIImage(named: "PlayButton"), for: .normal)
        otherButton.setImage(UIImage(named: "PlayButtonPressed"), for: .highlighted)
        view.addSubview(otherButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

