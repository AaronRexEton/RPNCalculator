//
//  Stack.swift
//  RPNCalculator2
//
//  Created by Aaron Rex on 10/06/2020.
//  Copyright © 2020 Aaron Rex. All rights reserved.
//

import Foundation

class Stack {
    var stack: [String] = ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_",]
    var top: Int = -1
    
    
    
    func pushToStack(value: String) {
        self.top += 1
        self.stack[top] = value
    }
    func removeFromStack() {
        if top == -1{
           print("Stack is empty")
        }
        else{
           top -= 1
        }
    }
    
    func calculate(sign: String) -> Int{
        if sign == "+" && top >= 1 {
            let sumation = Int(stack[top])! + Int(stack[top - 1])!
            removeFromStack()
            removeFromStack()
            pushToStack(value: String(sumation))
            return sumation
        } else if sign == "-" && top >= 1{
            
            let subtraction = Int(stack[top-1])! - Int(stack[top])!
            removeFromStack()
            removeFromStack()
            pushToStack(value: String(subtraction))
            return subtraction
        
        } else if sign == "*" && top >= 1{
            let multiplication = Int(stack[top-1])! * Int(stack[top])!
            removeFromStack()
            removeFromStack()
            pushToStack(value: String(multiplication))
            return multiplication
            
        } else if sign == "/" && top >= 1 {
            let division = Int(stack[top-1])! / Int(stack[top])!
            removeFromStack()
            removeFromStack()
            pushToStack(value: String(division))
            return division
            
        } else {
            return 100000
        }
        
        
    }
    
    func resetStack() {
        top = -1
    }
    
}
