//
//  Fizz-Buzz.swift
//  
//
//  Created by Vyacheslav Pronin on 16.10.2022.
//

import Foundation

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        var i = 1
        
        while i <= n {
            switch i {
            case let i where i % 15 == 0 :
                result.append("FizzBuzz")
            case let i where i % 5 == 0 :
                result.append("Buzz")
            case let i where i % 3 == 0 :
                result.append("Fizz")
            default:
                result.append("\(i)")
            }
            i += 1
        }
        
        return result
    }
}
