//
//  Remove-Digit-From-Number-to-Maximize-Result.swift
//  
//
//  Created by Vyacheslav Pronin on 22.10.2022.
//

import Foundation

class Solution {
    func removeDigit(_ number: String, _ digit: Character) -> String {
        var arr = [String]()
        var editNumb = number
        
        for (index, char) in number.enumerated() {
            if char == digit {
                let index = number.index(number.startIndex, offsetBy: index)
                editNumb.remove(at: index)
                arr.append(editNumb)
                editNumb = number
            }
        }
        arr.sort()
        let result = arr[arr.count - 1]
        return String(result)
    }
}
