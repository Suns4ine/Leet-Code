//
//  Lemonade-Change.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2022.
//

import Foundation

class Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var arrCash: [Int] = [0, 0]
        
        for client in bills {
            switch client {
            case let money where money == 5:
                arrCash[0] += 5
            case let money where money == 10:
                guard arrCash[0] >= 5 else { return false }
                arrCash[0] -= 5
                arrCash[1] += 10
            default:
                if arrCash[1] >= 10 && arrCash[0] >= 5 {
                    arrCash[1] -= 10
                    arrCash[0] -= 5
                } else if arrCash[0] >= 15 {
                    arrCash[0] -= 15
                } else {
                    return false
                }
            }
        }
        
        return true
    }
}
