//
//  Guess-Number-Higher-or-Lower.swift
//  
//
//  Created by Vyacheslav Pronin on 08.10.2022.
//

import Foundation

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        guard n > 1 else { return 1 }
        var left = 1
        var right = n
        
        while left < right {
            let numb = (left + right) / 2
            
            switch guess(numb) {
            case let count where count == -1:
                right = numb
            case let count where count == 1:
                left = numb + 1
            default:
                return numb
            }
        }
        
        return left
    }
}
