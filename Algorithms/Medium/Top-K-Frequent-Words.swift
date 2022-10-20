//
//  Top-K-Frequent-Words.swift
//  
//
//  Created by Vyacheslav Pronin on 19.10.2022.
//

import Foundation

class Solution {
    //MARK: With system Sorted
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
    
    //MARK: With Binary Search
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var k = k
        var result = [String]()
        var dict: [String: Int] = [:]
        var arr: [(numb: Int, str: String)] = []
        
        for word in  words {
            if dict[word] == nil {
                dict[word] = 0
            }
            dict[word]! += 1
        }
        
        for key in dict.keys {
            let elem = (numb: dict[key]!, str: key)
            arr.insert(elem, at: getIndex(arr, elem: elem))
        }
        
        for elem in arr {
            guard k > 0 else { break }
            result.append(elem.str)
            k -= 1
        }
        
        return result
    }
    
    func getIndex(_ array: [(numb: Int, str: String)], elem: (numb: Int, str: String)) -> Int {
        guard !array.isEmpty else { return 0 }
        var left = 0
        var right = array.count - 1
        
        while left <= right {
            let index = (left + right) / 2
            
            if array[index].numb == elem.numb {
                if array[index].str >= elem.str {
                    right = index - 1
                } else {
                    left = index + 1
                }
            } else if array[index].numb < elem.numb {
                right = index - 1
            } else {
                left = index + 1
            }
            
        }
        
        if right < 0 {
            return 0
        } else if array[right].numb >= elem.numb || (array[right].numb == elem.numb && array[right].str >= elem.str) {
            return right + 1
        }
        return right
    }
}
