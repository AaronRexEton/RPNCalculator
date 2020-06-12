//
//  ViewController.swift
//  RPNCalculator2
//
//  Created by Aaron Rex on 10/06/2020.
//  Copyright © 2020 Aaron Rex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var stack = Stack()
    var storedValue: String = ""
    var output: String = ""
    var storedSign: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var displayText: UILabel!
    
    @IBAction func zeroButton(_ sender: Any) {
        
      numberInput(number: "0")
    }
    
    @IBAction func oneButton(_ sender: Any) {
        numberInput(number: "1")
    }
    
    @IBAction func twoButton(_ sender: Any) {
        numberInput(number: "2")
    }
    @IBAction func threeButton(_ sender: Any) {
        numberInput(number: "3")
    }
    @IBAction func fourButton(_ sender: Any) {
        numberInput(number: "4")
    }
    @IBAction func fiveButton(_ sender: Any) {
        numberInput(number: "5")
    }
    @IBAction func sixButton(_ sender: Any) {
        numberInput(number: "6")
    }
    @IBAction func sevenButton(_ sender: Any) {
        numberInput(number: "7")
    }
    @IBAction func eightButton(_ sender: Any) {
        numberInput(number: "8")
    }
    
    @IBAction func nineButton(_ sender: Any) {
        numberInput(number: "9")
    }
    @IBAction func evalButton(_ sender: Any) {
        if Int(output)! <= 999 && Int(output)! >= -999 {
            displayText.text = output
            stack.resetStack()
        } else {
            displayText.text = "Outside of range or Invalid Input"
        }
    }
    @IBAction func clearButton(_ sender: Any) {
        reset()
        stack.resetStack()
    }
    @IBAction func enterButton(_ sender: Any) {
        stack.pushToStack(value: storedValue)
        displayText.text = "number entered! \(storedValue)"
        
        reset()
        
    }
    @IBAction func signChangeButton(_ sender: Any) {
        if storedValue.first == "-" {
            storedValue.removeFirst()
            displayText.text = storedValue
        } else {
            storedValue = "-" + storedValue
            displayText.text = storedValue
        }
        
    }
    @IBAction func additionButton(_ sender: Any) {
        output = String(stack.calculate(sign: "+"))
        
        reset()

    }
    @IBAction func subtractionButton(_ sender: Any) {
        output = String(stack.calculate(sign: "-"))
        
        reset()
    }
    @IBAction func multiplicationButton(_ sender: Any) {
        output = String(stack.calculate(sign: "*"))
    
        reset()
    }
    @IBAction func divisionButton(_ sender: Any) {
        output = String(stack.calculate(sign: "/"))
        
        reset()
    }
    
    func numberInput(number: String) {
        if storedValue.first != "-" {
            if storedValue.count < 3 {
            storedValue = storedValue + number
            displayText.text = storedValue
            } else {
                storedValue = number
                displayText.text = storedValue
            }
        } else {
            if storedValue.count < 4 {
            storedValue = storedValue + number
            displayText.text = storedValue
            } else {
                storedValue = number
                displayText.text = storedValue
            }
        }
    }
    
    func reset() {
        storedValue = ""
        displayText.text = storedValue
    }
}

