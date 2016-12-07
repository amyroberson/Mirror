//
//  Tests.swift
//  Mirror
//
//  Created by Amy Roberson on 12/7/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation

func runTests(){
    test(testName: "Truth!", condition: true, failureMessage: "What?")
    testStep1(input:["first", "second", "third", "fourth", "fifth"])
    testStep2(input:["--reverse", "second", "third", "fourth", "fifth"])
    testStep3(input:["--naked-lunch", "second", "third", "fourth", "fifth"])
}

//write more tests!!
func test(testName: String, condition: Bool, failureMessage: String) {
    if condition {
        print("\(testName) Passed!")
    } else {
    
    print("\(testName) failed!: \(failureMessage)")
    }
}

func testStep1(input: [String]) {
    arrangingInputTexts(inputs: input)
}

func testStep2(input: [String]) {
    arrangingInputTexts(inputs: input)
}

func testStep3(input: [String]) {
    arrangingInputTexts(inputs: input)
}
