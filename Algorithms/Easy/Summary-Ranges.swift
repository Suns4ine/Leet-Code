//
//  Summary-Ranges.swift
//  
//
//  Created by Vyacheslav Pronin on 22.10.2022.
//

import Foundation

func summaryRanges(_ nums: [Int]) -> [String] {
    guard !nums.isEmpty else { return [] }
    var result = [String]()
    var startNumb = nums[0]
    var count = 0
    
    for index in 1...nums.count {
        if index < nums.count && startNumb + count == nums[index] - 1 {
            count += 1
        } else {
            result.append(count == 0 ? "\(startNumb)" : "\(startNumb)->\(nums[index - 1])")
            count = 0
            startNumb = nums[index == nums.count ? index - 1 : index]
        }
    }
    
    return result
}
