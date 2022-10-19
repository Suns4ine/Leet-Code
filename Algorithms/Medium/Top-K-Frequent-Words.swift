//
//  Top-K-Frequent-Words.swift
//  
//
//  Created by Vyacheslav Pronin on 19.10.2022.
//

import Foundation

class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var arr: [(numb: Int, str: String)] = []
        var dict: [String: Int] = [:]
        var result = [String]()
        var k = k
        
        for word in  words {
            if dict[word] == nil {
                dict[word] = 0
            }
            dict[word]! += 1
        }
        
        for key in dict.keys {
            let elem = (numb: dict[key]!, str: key)
            arr.append(elem)
        }
        
        arr = arr.sorted {
            if $0.numb == $1.numb {
                return $0.str < $1.str
            } else {
                return $0.numb > $1.numb
            }
        }
        
        for elem in arr {
            guard k > 0 else { break }
            result.append(elem.str)
            k -= 1
        }
        
        return result
    }
}
