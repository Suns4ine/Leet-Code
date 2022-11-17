//
//  Rectangle-Area.swift
//  
//
//  Created by Vyacheslav Pronin on 17.11.2022.
//

import Foundation

class Solution {
    func computeArea(_ ax1: Int, _ ay1: Int, _ ax2: Int, _ ay2: Int, _ bx1: Int, _ by1: Int, _ bx2: Int, _ by2: Int) -> Int {
        var commonX = getRange(left: Range(ax1...ax2), right: Range(bx1...bx2))
        var commonY = getRange(left: Range(ay1...ay2), right: Range(by1...by2))
        var sA = (ax2 - ax1) * (ay2 - ay1)
        var sB = (bx2 - bx1) * (by2 - by1)
        
        return sA + sB - (commonX * commonY)
    }
    
    
    func getRange(left: Range<Int>, right: Range<Int>) -> Int {
        
        switch (left, right) {
        case (let left, let right) where left.first ?? 0 <= right.first ?? 0 && left.last ?? 0 >= right.first ?? 0:
            return min(left.last ?? 0, right.last ?? 0) - max(left.first ?? 0, right.first ?? 0)
        case (let left, let right) where right.first ?? 0 <= left.first ?? 0 && right.last ?? 0 >= left.first ?? 0:
            return min(left.last ?? 0, right.last ?? 0) - max(left.first ?? 0, right.first ?? 0)
        default:
            return 0
        }
    }
}


