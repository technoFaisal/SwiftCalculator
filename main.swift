//
//  main.swift
//  calc
//
//  Created by Jesse Clark on 12/3/18.
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation

var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program

// Retrieve User Input
//let no1 = args[0]; // Sample Code Only! Update Required!
//let operatorG = args[1]; // Sample Code Only! Update Required!
//let no2 = args[2]; // Sample Code Only! Update Required!

// Initialize a Calculator object
let calculator = Calculator();

 print("enter the input line")
let inputG = readLine()!



calculator.printStringToEvaluate(args: inputG)
calculator.splitString(args: inputG)

//print("enter a numebr")

// let x = readLine()

//var xint = Int(x)


//print(xint*2)



// Calculate the result
//let result = calculator.add(no1: 1, no2: 1);

//print(result)

//
//if let inputG = readLine()
//{
//print(inputG)
//}

