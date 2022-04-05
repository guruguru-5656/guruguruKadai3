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
        guard let firstInput = Int(firstInputTextField.text ?? ""),
              let secondInput = Int(secondInputTextField.text ?? "") else {

            firstNumberLabel.text = firstInputTextField.text
            secondNumberLabel.text = secondInputTextField.text
            resultLabel.text = "数字を入力してください"
            return
        }

        let firstNumber = firstInput * (firstReverseSwitch.isOn ? -1 : 1)
        let secondNumber = secondInput * (secondReverseSwitch.isOn ? -1 : 1)

        firstNumberLabel.text = String(firstNumber)
        secondNumberLabel.text = String(secondNumber)
        resultLabel.text = String(firstNumber + secondNumber)
    }
}
