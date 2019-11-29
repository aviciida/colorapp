//
//  ViewController.swift
//  ColorApp
//
//  Created by 飯田諒 on 2019/11/28.
//  Copyright © 2019 RyoIida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    @IBOutlet weak var hexStringLabel: UILabel!
    
    private var redValueStore: Float = 0 // Rの値を保持しておく変数
    private var greenValueStore: Float = 0 // Gの値を保持しておく変数
    private var blueValueStore: Float = 0 // Bの値を保持しておく変数
    
    private var redValueSliderTag = 0
    private var greenValueSliderTag = 1
    private var blueValueSliderTag = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // ① Sliderの値の変更をリアルタイムに変更
    @IBAction func valueDidChange(_ sender: UISlider) {
        
    }
    
    // ② 変更された値の色に変更
    func updateColor() {

    }
    
    // ③ 現在のRGBの値からHEXを計算して表示
    func toHex() {

    }
}

