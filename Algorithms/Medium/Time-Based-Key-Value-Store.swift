//
//  Time-Based-Key-Value-Store.swift
//  
//
//  Created by Vyacheslav Pronin on 20.10.2022.
//

import Foundation

class TimeMap {
    
    var dict: [String: [(Int, String)]] = [:]
    
    init() {}
    
    func set(_ key: String, _ value: String, _ timestamp: Int) {
        dict[key, default: []].append((timestamp, value))
    }
    
    func get(_ key: String, _ timestamp: Int) -> String {
        
        if let arr = dict[key] {
            var maxIndex = arr.count - 1
            
            while maxIndex >= 0 {
                if arr[maxIndex].0 <= timestamp {
                    return arr[maxIndex].1
                }
                maxIndex -= 1
            }
        }
        return ""
    }
}

/**
 * Your TimeMap object will be instantiated and called as such:
 * let obj = TimeMap()
 * obj.set(key, value, timestamp)
 * let ret_2: String = obj.get(key, timestamp)
 */
