//
//  Logger-Rate-Limiter.swift
//  
//
//  Created by Vyacheslav Pronin on 20.10.2022.
//

import Foundation

class Logger {

    private var dict: [String : Int] = [:]
    init() {}
    
    func shouldPrintMessage(_ timestamp: Int, _ message: String) -> Bool {
        if dict[message] == nil || dict[message]! <= timestamp {
            dict[message] = timestamp + 10
            return true
        }
        
        return false
    }
}
