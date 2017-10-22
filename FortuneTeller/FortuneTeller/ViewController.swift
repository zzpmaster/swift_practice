//
//  ViewController.swift
//  FortuneTeller
//
//  Created by Zhang, Zhongpeng on 20/10/2017.
//  Copyright © 2017 zhangzp. All rights reserved.
//
// 设置各种机型的等比例图片放大缩小
// x y 居中 height 与外层的view的一样大， width选择aspect ratio，等比例的放大缩小
// 如果设置一个组件的y坐标，可以新建一个uiview来辅助
import UIKit
import GameKit //获取随机数
import AudioToolbox // 播放声音

class ViewController: UIViewController {

    @IBOutlet weak var yourFortune: UIImageView!
    
    // 手机发生时间，系统会调用
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == .motionShake {     //检测手机摇晃
            showAnswer()
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

    @IBAction func tellMeSomething(_ sender: UIButton) {
        showAnswer()
    }
    
    func showAnswer() {
        if yourFortune.isHidden {
            yourFortune.isHidden = false
        }
        // 获取1-6的随机数
        let answer = GKRandomSource.sharedRandom().nextInt(upperBound: 6) + 1
        yourFortune.image = UIImage(named: "\(answer)")
        
        // 播放系统声音 
        // AudioServicesPlaySystemSound(1000)
    }
}

