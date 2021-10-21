//
//  Valid-Parentheses.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2021.
//

import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
    var last = ""
    let array = Array(s)
    
    for elem in array {
        switch elem {
        case "(":
            last += "("
        case ")":
            if last.last != "(" {
                return false
            }
            last.removeLast()
        case "[":
            last += "["
        case "]":
            if last.last != "[" {
                return false
            }
            last.removeLast()
        case "{":
            last += "{"
        case "}":
            if last.last != "{" {
                return false
            }
            last.removeLast()
        default:
            break
        }
    }
    
    return last.count == 0
    }
}
