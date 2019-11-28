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
    
    private var redValueStore: Float = 0
    private var greenValueStore: Float = 0
    private var blueValueStore: Float = 0
    private var redValueSliderTag = 0
    private var greenValueSliderTag = 1
    private var blueValueSliderTag = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func valueDidChange(_ sender: UISlider) {
        switch sender.tag {
        case redValueSliderTag:
            redValueStore = sender.value
            redValue.text = String(Int(sender.value))
        case greenValueSliderTag:
            greenValueStore = sender.value
            greenValue.text = String(Int(sender.value))
        case blueValueSliderTag:
            blueValueStore = sender.value
            blueValue.text = String(Int(sender.value))
        default:
            return
        }
        updateColor()
        toHex()
    }
    
    func updateColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redValueStore)/255, green: CGFloat(greenValueStore)/255, blue: CGFloat(blueValueStore)/255, alpha: 1.0)

    }
    
    func toHex() {
        let _redValueToInt16: String = String(Int(redValueStore), radix: 16)
        let redValueToInt16: String = _redValueToInt16.count == 1 ? "0" + _redValueToInt16 : _redValueToInt16
        let _greenValueToInt16: String = String(Int(greenValueStore), radix: 16)
        let greenValueToInt16: String = _greenValueToInt16.count == 1 ? "0" + _greenValueToInt16 : _greenValueToInt16
        let _blueValueToInt16: String = String(Int(blueValueStore), radix: 16)
        let blueValueToInt16: String = _blueValueToInt16.count == 1 ? "0" + _blueValueToInt16 : _blueValueToInt16
        let hexString: String = "#" + redValueToInt16 + greenValueToInt16 + blueValueToInt16
        hexStringLabel.text = hexString
        hexStringLabel.textColor = UIColor(red: CGFloat(redValueStore)/255, green: CGFloat(greenValueStore)/255, blue: CGFloat(blueValueStore)/255, alpha: 1.0)
        
    }
}

