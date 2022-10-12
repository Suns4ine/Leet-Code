//
//  Reverse-Integer.swift
//  
//
//  Created by Vyacheslav Pronin on 12.10.2022.
//

import Foundation

func reverse(_ x: Int) -> Int {
    var x = x
    var result = 0
    var minus = 1
    
    if x < 0 {
        minus = -1
        x *= -1
    }
    
    while x > 0 {
        result = result * 10 + (x % 10)
        x = x/10
    }
    
    if result > Int32.max {
        return minus == 1 ? 0 : -1
    }
    return result * minus
}
