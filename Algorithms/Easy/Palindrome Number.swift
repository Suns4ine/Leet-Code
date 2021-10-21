//
//  Palindrome Number.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2021.
//

import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let numb = String(x)
    
        return numb == String(numb.reversed())
    }
}
