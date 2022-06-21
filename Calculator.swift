//
//  Calculator.swift
//  calc
//
//  Created by Jacktator on 31/3/20.
//  Copyright © 2020 UTS. All rights reserved.
//

import Foundation

class Calculator {
    
    /// For multi-step calculation, it's helpful to persist existing result
    var currentResult = 0;
    
    /// Perform Addition
    ///
    /// - Author: Jacktator
    /// - Parameters:
    ///   - no1: First number
    ///   - no2: Second number
    /// - Returns: The addition result
    ///
    /// - Warning: The result may yield Int overflow.
    /// - SeeAlso: https://developer.apple.com/documentation/swift/int/2884663-addingreportingoverflow
    func add(no1: Int, no2: Int) -> Int {
        return no1 + no2;
    }
    func subg(no1: Int, no2: Int) -> Int {
        return no1 - no2;
    }
    func mulg(no1: Int, no2: Int) -> Int {
        return no1 * no2;
    }
    func divg(no1: Int, no2: Int) -> Int {
        return no1 / no2;
    }
    func modg(no1: Int, no2: Int) -> Int {
        return no1 % no2;
    }
    
    
    func printStringToEvaluate(args: String){
        
        print("input line detected \(args)")
        
    }
    func splitString(args : String){
        
        let arrayG = args.components(separatedBy: " ")
      //  print(arrayG.count)
        var arrayNo: Array<Int> = Array()
        var indexNo = 0
        var op: Array<String> = Array()
        var noOfOps = 0
        var resultG : Int
        var ind = 0  // array elemene test index
        if (arrayG.count > 3)
        {

        
            for i in arrayG {
                // print("array division result\(i)")
                let checkOp = validateOperator(eq : i)
                let (signedNumber , sign)  = checkSignedNumber(eq: i)
                
                if checkOp {
                //print("operator found")
                    op.append(i)
                    
                    noOfOps = noOfOps + 1
                    
                }
                
                //  else if signedNumber {
                //   let simpInteger = Int(i.components(separatedBy:CharacterSet.decimalDigits.inverted).joined())
                    
                // }
                
                else{
                    
                    arrayNo.insert(Int(i)! , at : indexNo)
                    print("numberdigit = \(Int(i)!)")
                    indexNo = indexNo + 1
                }
            }
            reduceEquation()
        }
         

//        for i in arrayNo {                    // testing array elements
//            print ("arrayno \(ind) = \(i) ")
//
//            ind = ind + 1
//        }
//        print("arrayno1 = \(arrayNo[0])")
//        print("arrayno2 = \(arrayNo[1])")
//        print("operator = \(op)")

        //        print("no of operators found = \(noOfOps)") shows no. of ops
        
        //print("first op = \(op[0])")
        //print("first op = \(op[1])")
        
        resultG = calculateG(numberOne: arrayNo[0], numberTwo: arrayNo[1], oper: op[0])
        
        print("result2 = \(resultG)")
    
    }
    
    
    func calculate(args: [String]) -> String {
        // Todo: Calculate Result from the arguments. Replace dummyResult with your actual result;
        let dummyResult = add(no1 : 1, no2 : 2);

        let result = String(dummyResult);
        return(result)
    }

    
    func calculateG(numberOne : Int, numberTwo : Int, oper : String) -> Int {
        
        let resultG  : Int
        
        switch oper {
        case "+":
            resultG = add(no1: numberOne, no2: numberTwo)
            return resultG
        case "-":
            resultG = subg(no1: numberOne, no2: numberTwo)
            return resultG
        case "*":
            resultG = mulg(no1: numberOne, no2: numberTwo)
            return resultG
        case "/":
            resultG = divg(no1: numberOne, no2: numberTwo)
            return resultG
        case "%":
            resultG = modg(no1: numberOne, no2: numberTwo)
            return resultG

        default:
            resultG = 0
            return resultG
        }
        
    }
    
    func validateOperator(eq : String) -> Bool{
        
        switch eq {
        case "+" :
            return true
        case "-" :
            return true
        case "*" :
            return true
        case "/" :
            return true
        case "%" :
            return true
        default:
            return false
        }
        
    }
    
    func checkSignedNumber(eq : String) -> (Bool , Sign : String){
        
        var signCheck = false
        let signG = eq.components(separatedBy: "")
        var sign = ""
        
        for i in signG {
            
            switch i {
            case "+" :
                sign = "+"
                signCheck = true
                
            case "-" :
                sign = "-"
                signCheck = true
                
            default:
                continue
            }
            
     
            
        }
        return (signCheck , sign )
    }
    
    func reduceEquation() {}
    
}
