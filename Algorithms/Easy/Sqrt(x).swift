//
//  Sqrt(x).swift
//  
//
//  Created by Vyacheslav Pronin on 08.10.2022.
//

import Foundation

class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x > 0 else { return 0 }
        var left = 1
        var right = x

        while left < right {
            let numb = (right + left) / 2
            if numb * numb >= x {
                right = numb
            } else {
                left = numb + 1
            }
        }

        return left * left == x ? left : left - 1
    }
}
