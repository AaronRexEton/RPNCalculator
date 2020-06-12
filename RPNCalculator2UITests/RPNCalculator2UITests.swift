//
//  RPNCalculator2UITests.swift
//  RPNCalculator2UITests
//
//  Created by Aaron Rex on 10/06/2020.
//  Copyright © 2020 Aaron Rex. All rights reserved.
//

import XCTest

class RPNCalculator2UITests: XCTestCase {


    func testExample() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["threeButton"].tap()
        app.buttons["enterButton"].tap()
        app.buttons["fiveButton"].tap()
        app.buttons["enterButton"].tap()
        app.buttons["multiplication"].tap()
        app.buttons["fourButton"].tap()
        app.buttons["enterButton"].tap()
        app.buttons["fourButton"].tap()
        app.buttons["enterButton"].tap()
        app.buttons["multiplication"].tap()
        app.buttons["subtraction"].tap()
        app.buttons["evalButton"].tap()
        
        let expected = "-1"
        let actual = app.staticTexts["display"].label
        XCTAssertEqual(expected, actual)

    
    
    
    
    }
    
  
  
    
    func testExample2() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["oneButton"].tap()
        app.buttons["enterButton"].tap()
        app.buttons["twoButton"].tap()
        app.buttons["enterButton"].tap()
        app.buttons["addition"].tap()
        app.buttons["sixButton"].tap()
        app.buttons["enterButton"].tap()
        app.buttons["sevenButton"].tap()
        app.buttons["enterButton"].tap()
        app.buttons["addition"].tap()
        app.buttons["multiplication"].tap()
       
        app.buttons["evalButton"].tap()
        
        let expected = "39"
        let actual = app.staticTexts["display"].label
        XCTAssertEqual(expected, actual)

    
    
    
    }
    
    func testExample3() {
         let app = XCUIApplication()
         app.launch()
         
         app.buttons["threeButton"].tap()
         app.buttons["threeButton"].tap()
         app.buttons["threeButton"].tap()
         app.buttons["enterButton"].tap()
         app.buttons["nineButton"].tap()
         app.buttons["enterButton"].tap()
         app.buttons["multiplication"].tap()
        
         app.buttons["evalButton"].tap()
         
         let expected = "Outside of range or Invalid Input"
         let actual = app.staticTexts["display"].label
         XCTAssertEqual(expected, actual)

     
     
     
     }
    
    func testClear() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["threeButton"].tap()
        app.buttons["threeButton"].tap()
        app.buttons["threeButton"].tap()
        app.buttons["enterButton"].tap()
        app.buttons["nineButton"].tap()
        app.buttons["enterButton"].tap()
        app.buttons["multiplication"].tap()
       
        app.buttons["clearButton"].tap()
        
        let expected = ""
        let actual = app.staticTexts["display"].label
        XCTAssertEqual(expected, actual)

    
    
    
    }
    
    func testSignChange() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["nineButton"].tap()
        app.buttons["nineButton"].tap()
        app.buttons["nineButton"].tap()
        app.buttons["signChangeButton"].tap()
        let expected = "-999"
        let actual = app.staticTexts["display"].label
        XCTAssertEqual(expected, actual)

    
    
    
    }
    
    
    

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
