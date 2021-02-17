//
//  ViewController.swift
//  TaskPart2
//
//  Created by 三浦　一真 on 2021/02/16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var label: UILabel!
    
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    
    
    @IBAction func culculate(_ sender: Any) {
        let num1 = Double(textField1.text ?? "" ) ?? 0
        let num2 = Double(textField2.text ?? "" ) ?? 0
        var result: Double = 0
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            result = num1 + num2
        case 1:
            result = num1 - num2
        case 2:
            result = num1 * num2
        case 3:
            guard num2 != 0 else {
                label.text = "割る数には0以外の数字を入力してください"
                return
            }
            result = num1 / num2
            
        default:
            return
        }
        label.text = String(result)
    }
}

