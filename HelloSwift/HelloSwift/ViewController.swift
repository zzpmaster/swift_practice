//
//  ViewController.swift
//  HelloSwift
//
//  Created by Zhang, Zhongpeng on 18/08/2017.
//  Copyright © 2017 zhangzp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPress(_ sender: UIButton) {
        myTitle.text = "Hello Swift"
    }
    
}

