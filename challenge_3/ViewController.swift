//
//  ViewController.swift
//  challenge_3
//
//  Created by 森本拓未 on 2022/04/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var firstInputTextField: UITextField!
    @IBOutlet private weak var secondInputTextField: UITextField!
    @IBOutlet private weak var firstReverseSwitch: UISwitch!
    @IBOutlet private weak var secondReverseSwitch: UISwitch!
    @IBOutlet private weak var firstNumberLabel: UILabel!
    @IBOutlet private weak var secondNumberLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstReverseSwitch.isOn = false
        secondReverseSwitch.isOn = false
    }
    @IBAction private func calculate(_ sender: Any) {
        var firstNumber: Int?
        var secondNumber: Int?
        if let firstInput = Int(firstInputTextField.text ?? "") {
            let firstSign = firstReverseSwitch.isOn ? -1 : 1
            firstNumber = firstInput * firstSign
            firstNumberLabel.text = String(firstNumber!)
        } else {
            firstNumberLabel.text = firstInputTextField.text
        }
        if let secondInput = Int(secondInputTextField.text ?? "") {
            let secondSign = secondReverseSwitch.isOn ? -1 : 1
            secondNumber = secondInput * secondSign
            secondNumberLabel.text = String(secondNumber!)
        } else {
            secondNumberLabel.text = secondInputTextField.text
        }
        guard let firstNumber = firstNumber, let secondNumber = secondNumber
        else {
            resultLabel.text = "数字を入力してください"
            return
        }
        resultLabel.text = String(firstNumber + secondNumber)
    }
}
