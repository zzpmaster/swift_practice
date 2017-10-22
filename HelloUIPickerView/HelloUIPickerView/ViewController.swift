//
//  ViewController.swift
//  HelloUIPickerView
//
//  Created by zzp on 2017/10/22.
//  Copyright © 2017年 zzp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let numberArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    let fruitArray = ["apple", "banana", "mango", "watermelon"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return numberArray.count
        } else {
            return fruitArray.count
        }
    }
    
    // 显示
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return numberArray[row]
        } else {
            return fruitArray[row]
        }
    }
    
    // 选择后执行
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            print("number: \(numberArray[row])")
        } else {
            print("fruit: \(fruitArray[row])")
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

