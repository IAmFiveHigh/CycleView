//
//  ViewController.swift
//  AutoCycleView
//
//  Created by 我是五高你敢信 on 2017/3/8.
//  Copyright © 2017年 我是五高你敢信. All rights reserved.
//

import UIKit

let ScreenWidth = UIScreen.main.bounds.width
let ScreenHeight = UIScreen.main.bounds.height

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cycleView = CycleView(frame: CGRect(x: 0, y: 20, width: ScreenWidth, height: ScreenHeight / 5))
        let array = ["test_banner01.jpg","test_banner02.jpg","test_banner03.jpg"]
        cycleView.setImageArray(array)
        cycleView.delegate = self
        
        view.addSubview(cycleView)
    }
    
    
    
    
}

extension ViewController: CycleViewDelegate {
    
    func imageViewBeClickWithTag(_ tag: Int) {
        
        print(tag)
    }
}

