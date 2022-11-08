//
//  Make-The-String-Great.swift
//  
//
//  Created by Vyacheslav Pronin on 08.11.2022.
//

import Foundation

class Solution {
    func makeGood(_ s: String) -> String {
        var s = Array(s)
        var index = 0
        
        while index < s.count - 1 {
            if ("a"..."z").contains(s[index].lowercased()) && ("a"..."z").contains(s[index + 1].lowercased()),
               abs(Int(s[index].asciiValue ?? 0) - Int(s[index + 1].asciiValue ?? 0)) == 32 {
                s.remove(at: index + 1)
                s.remove(at: index)
                index = -1
            }
            
            index += 1
        }
        
        return String(s)
    }
}
