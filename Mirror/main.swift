//
//  main.swift
//  Mirror
//
//  Created by Amy Roberson on 12/7/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation
// use this to run tests
let arguments = Array(CommandLine.arguments.dropFirst())
if !arguments.isEmpty && arguments[0] == "--run-tests" {
    runTests()
}


print("How many pieces of text do you want to enter between 3 and 10?")


guard let number = Int(readLine(strippingNewline: true)!) else {
    fatalError("You did not enter a number!")
}

var userArray = [String]()

for _ in 2...number{
    print("Please enter some more text")
    userArray.append(readLine(strippingNewline: true)!)
}

func arrangingInputTexts(inputs: [String]) {
    precondition((inputs.count > 2 && inputs.count < 10),
                 "Remember, you need to enter at least 3 strings, but no more than 10")
    var updatedArray: [String] = inputs
    var tmp = [String]()
    if inputs[0] == "--reverse"{
        updatedArray = Array(inputs.dropFirst())
        updatedArray = updatedArray.reversed()
    } else if inputs[0] == "--naked-lunch"{
        updatedArray = Array(inputs.dropFirst())
        var n: Int = 0
        for input in updatedArray{
            tmp.insert(input, at: Int(arc4random_uniform(UInt32(n))))
            n = n + 1
        }
        updatedArray = tmp
        }
    
    
    print(updatedArray)
}

arrangingInputTexts(inputs: userArray)


