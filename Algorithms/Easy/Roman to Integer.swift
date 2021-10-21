//
//  Roman to Integer.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2021.
//

import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        var result = 0
        let greekNumb: [String : Int] = ["I": 1, "V": 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
        let array = Array(s)
    
        for i in 0...array.count - 1 {
            if i != array.count - 1 {
                switch (array[i], array[i + 1]) {
                case (let one, let two) where  one == "I" && (two == "V" || two == "X"):
                    result -= 1
                case (let one, let two) where  one == "X" && (two == "L" || two == "C"):
                    result -= 10
                case (let one, let two) where  one == "C" && (two == "D" || two == "M"):
                    result -= 100
                default:
                    result += greekNumb[String(array[i])] ?? 0
                }
            } else {
                result += greekNumb[String(array[i])] ?? 0
            }
        }
        return result
    }
}
