//
//  ViewController.swift
//  HelloUIImageView
//
//  Created by Zhang, Zhongpeng on 20/10/2017.
//  Copyright © 2017 zhangzp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myPet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //myPet.image = UIImage(named: "MyCat")
        // 还可以直接指定名字
        myPet.image = #imageLiteral(resourceName: "MyCat")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

