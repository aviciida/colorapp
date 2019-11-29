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
        if sender.tag == 0 {
            // Rの処理
            redValue.text = String(Int(sender.value))
            redValueStore = sender.value
        } else if sender.tag == 1 {
            // Gの処理
            greenValue.text = String(Int(sender.value))
            greenValueStore = sender.value
        } else if sender.tag == 2 {
            // Bの処理
            blueValue.text = String(Int(sender.value))
            blueValueStore = sender.value
        }
        updateColor()
        toHex()
    }
    
    // ② 変更された値の色に変更
    func updateColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redValueStore/255), green: CGFloat(greenValueStore/255), blue: CGFloat(blueValueStore/255), alpha: 1.0)
    }
    
    // ③ 現在のRGBの値からHEXを計算して表示
    func toHex() {
        let rHex = String(Int(redValueStore), radix: 16)
        let _rHex = rHex.count == 1 ? "0" + rHex : rHex
        let gHex = String(Int(greenValueStore), radix: 16)
        let _gHex = gHex.count == 1 ? "0" + gHex : gHex
        let bHex = String(Int(blueValueStore), radix: 16)
        let _bHex = bHex.count == 1 ? "0" + bHex : bHex
        let hexString = "#" + _rHex + _gHex + _bHex
        hexStringLabel.text = hexString
    }
}

