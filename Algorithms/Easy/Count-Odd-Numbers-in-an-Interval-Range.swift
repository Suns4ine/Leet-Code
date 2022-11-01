//
//  Count-Odd-Numbers-in-an-Interval-Range.swift
//  
//
//  Created by Vyacheslav Pronin on 01.11.2022.
//

import Foundation

class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
        return (high - low) % 2 == 0 && high % 2 == 0 ? (high - low)/2 : (high - low)/2 + 1
    }
}
