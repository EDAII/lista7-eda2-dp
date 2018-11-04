//
//  main.swift
//  fibonacci
//
//  Created by Djorkaeff Alexandre Vilela Pereira on 04/11/2018.
//  Copyright © 2018 Djorkaeff Alexandre Vilela Pereira. All rights reserved.
//

import Foundation

print("Fibonacci Calc.")

func input() -> String {
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    return (NSString(data: inputData, encoding:String.Encoding.utf8.rawValue) as String?)!
}

var fib = [Int]()
var max = 2

fib.append(0)
fib.append(1)

func fibonacci(n: Int) -> Int {
    
    var i = max
    
    if n>max-1 {
        while i<=n {
            fib.append(fib[i-1]+fib[i-2])
            i += 1
        }
        max = n + 1
    }
    
    return fib[n]
}

var num = "1"
while Int(num) != 0 {
    print("0 for exit...")
    print("Input: ")
    num = readLine()!
    let intNum = Int(num)
    if intNum != 0 {
        print("Fibonacci value: " + String(fibonacci(n: intNum!)))
        print("\n\n")
    }
}
