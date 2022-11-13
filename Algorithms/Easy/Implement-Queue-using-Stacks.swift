//
//  Implement-Queue-using-Stacks.swift
//  
//
//  Created by Vyacheslav Pronin on 12.11.2022.
//

import Foundation

class MyQueue {
    private var queue = [Int]()
    
    init() {}
    
    func push(_ x: Int) {
        queue.append(x)
    }
    
    func pop() -> Int {
        return queue.removeFirst()
    }
    
    func peek() -> Int {
        return queue.first!
    }
    
    func empty() -> Bool {
        return queue.isEmpty
    }
}
