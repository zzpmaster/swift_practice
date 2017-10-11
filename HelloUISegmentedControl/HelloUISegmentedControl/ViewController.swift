//
//  ViewController.swift
//  HelloUISegmentedControl
//
//  Created by Zhang, Zhongpeng on 11/10/2017.
//  Copyright © 2017 zhangzp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func myToggleChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
            case 0:
                view.backgroundColor = .white
                break
            case 1:
                view.backgroundColor = .black
                break
            case 2:
                view.backgroundColor = .red
                break
            case 3:
                view.backgroundColor = .orange
                break
            case 4:
                view.backgroundColor = .yellow
                break
            default:
                break
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

