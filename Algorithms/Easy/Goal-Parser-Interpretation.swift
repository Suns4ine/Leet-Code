//
//  Goal-Parser-Interpretation.swift
//  
//
//  Created by Vyacheslav Pronin on 09.11.2022.
//

import Foundation

class Solution {
    func interpret(_ command: String) -> String {
        var command = Array(command)
        var result = ""
        var index = 0
        
        while index < command.count {
            switch command[index] {
            case let elem where elem == "G":
                result += "G"
            case let elem where elem == "(":
                result += command[index + 1] == ")" ? "o" : "al"
            default:
                break
            }
            
            index += 1
        }
        
        return result
    }
}
