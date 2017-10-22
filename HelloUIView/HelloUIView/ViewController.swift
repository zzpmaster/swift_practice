//
//  ViewController.swift
//  HelloUIView
//
//  Created by zzp on 2017/10/2.
//  Copyright © 2017年 zzp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var midRect: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        midRect.backgroundColor = UIColor.green
        midRect.alpha = 0.5
        
        view.backgroundColor = UIColor.orange
        
        // 问号的意思是如果 view.viewWithTag(100) = nil 就不会执行后面的代码
        // 如果view.viewWithTag(100)不为空，设置backgroundColor
        view.viewWithTag(100)?.backgroundColor = UIColor.lightGray
        
        
        let viewArea = CGRect(x: 50, y: 400, width: 100, height: 50)
        let smallView = UIView(frame: viewArea)
        smallView.backgroundColor = UIColor.purple
        view.addSubview(smallView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

