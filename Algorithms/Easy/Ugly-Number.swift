//
//  Ugly-Number.swift
//  
//
//  Created by Vyacheslav Pronin on 29.10.2022.
//

import Foundation

class Solution {
    func isUgly(_ n: Int) -> Bool {
        var n = n
        
        outerloop: while n != 0 {
            switch n {
            case let numb where numb % 2 == 0:
                n = n/2
            case let numb where numb % 3 == 0:
                n = n/3
            case let numb where numb % 5 == 0:
                n = n/5
            default:
                break outerloop
            }
        }
        
        return (1...5).contains(n) ? true : false
    }
}
