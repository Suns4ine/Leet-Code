//
//  To-Lower-Case.swift
//  
//
//  Created by Vyacheslav Pronin on 09.11.2022.
//

import Foundation

class Solution {
    func toLowerCase(_ s: String) -> String {
        var result = ""
        var s = Array(s)
        
        for elem in s {
            result += ("A"..."Z").contains(elem) ? elem.lowercased() : String(elem)
        }
        
        return result
    }
}
