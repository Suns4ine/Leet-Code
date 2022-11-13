//
//  Design-Parking-System.swift
//  
//
//  Created by Vyacheslav Pronin on 12.11.2022.
//

import Foundation

class ParkingSystem {
    
    private var arrCount = [0, 0, 0]
    
    init(_ big: Int, _ medium: Int, _ small: Int) {
        arrCount[0] = big
        arrCount[1] = medium
        arrCount[2] = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        switch carType {
        case 1:
            if arrCount[0] > 0 { arrCount[0] -= 1; return true }
        case 2:
            if arrCount[1] > 0 { arrCount[1] -= 1; return true }
        case 3:
            if arrCount[2] > 0 { arrCount[2] -= 1; return true }
        default:
            return false
        }
        return false
    }
}
