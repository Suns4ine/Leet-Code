//
//  Maximum-Sum-Circular-Subarray.swift
//  
//
//  Created by Vyacheslav Pronin on 18.01.2023.
//

import Foundation

class Solution{
    func maxSubarraySumCircular(_ arr: [Int]) -> Int {
        
        var maxLinearSum = arr[0], minLinearSum = arr[0],currMaxSum = arr[0],currMinSum = arr[0], totalSum = arr[0];
        
        for i in 1..<arr.count{
            currMaxSum = max(currMaxSum+arr[i],arr[i]);
            maxLinearSum = max(maxLinearSum,currMaxSum);
            
            currMinSum = min(currMinSum + arr[i],arr[i]);
            minLinearSum = min(currMinSum,minLinearSum);
            
            totalSum += arr[i];
        }
        
        return maxLinearSum > 0 ? max((totalSum-minLinearSum),maxLinearSum) : maxLinearSum;
    }
}
