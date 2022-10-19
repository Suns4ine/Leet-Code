//
//  Maximum-Units-on-a-Truck.swift
//  
//
//  Created by Vyacheslav Pronin on 19.10.2022.
//

import Foundation

class Solution {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
        guard truckSize > 0 else { return 0 }
        let boxTypes = boxTypes.sorted { $0[1] > $1[1] }
        var truckSize = truckSize
        var reslut = 0
        
        for elem in boxTypes {
            guard truckSize > 0 else { break }
            reslut +=  min(truckSize, elem[0]) * elem[1]
            truckSize -= elem[0]
        }
        
        return reslut
    }
}
