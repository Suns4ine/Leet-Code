//
//  Online-Stock-Span.swift
//  
//
//  Created by Vyacheslav Pronin on 10.11.2022.
//

import Foundation

class StockSpanner {
    
    private var arr = [Int]()
    
    init() {}
    
    func next(_ price: Int) -> Int {
        guard !arr.isEmpty else { arr.append(price); return 1 }
        var count = 1
        var index = arr.count - 1
        
        while index >= 0 {
            guard arr[index] <= price else { break }
            count += 1
            index -= 1
        }
        
        arr.append(price)
        return count
    }
}
