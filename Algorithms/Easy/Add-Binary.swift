//
//  Add-Binary.swift
//  
//
//  Created by Vyacheslav Pronin on 11.10.2022.
//

import Foundation

//MARK: Two Solutions
class Solution {
    
    //MARK: First Solution
    func addBinary(_ a: String, _ b: String) -> String {
        let arrA = Array(a).compactMap{ Int(String($0)) }
        let arrB = Array(b).compactMap{ Int(String($0)) }
        
        return sumTwoArray(arrA, arrB).reduce("") { res, val  in
            res + String(val)
        }
    }
    
    func sumTwoArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        var arrMax = arr1.count > arr2.count ? arr1 : arr2
        let arrMin = arr1.count > arr2.count ? arr2 : arr1
        var indexMax = arrMax.count - 1
        var indexMin = arrMin.count - 1
        var isMore = false
        
        while indexMax >= 0 {
            if isMore {
                arrMax[indexMax] = arrMax[indexMax] + 1
                isMore = false
            }
            
            if indexMin >= 0 {
                isMore = (arrMax[indexMax] + arrMin[indexMin]) > 1
                arrMax[indexMax] = (arrMax[indexMax] + arrMin[indexMin]) % 2
            } else {
                isMore = arrMax[indexMax] > 1
                arrMax[indexMax] = arrMax[indexMax] % 2
            }
            
            indexMax -= 1
            indexMin -= 1
        }
        
        if isMore {
            arrMax.insert(1, at: 0)
        }
        
        return arrMax
    }
    
    //MARK: Second Solution
    func addBinary(_ a: String, _ b: String) -> String {
        let arrA = Array(a)
        let arrB = Array(b)
        
        return String(sumTwoArray(arrA, arrB))
    }

    func sumTwoArray(_ arr1: [String.Element], _ arr2: [String.Element]) -> [String.Element] {
        var arrMax = arr1.count > arr2.count ? arr1 : arr2
        let arrMin = arr1.count > arr2.count ? arr2 : arr1
        var indexMax = arrMax.count - 1
        var indexMin = arrMin.count - 1
        var isMore = false
        
        while indexMax >= 0 {
            if isMore {
                arrMax[indexMax] = arrMax[indexMax] == "1" ? "2" : "1"
                isMore = false
            }
            
            if indexMin >= 0 {
                isMore = arrMax[indexMax] == "1" && arrMin[indexMin] == "1" || arrMax[indexMax] == "2"
                
                switch (arrMax[indexMax], arrMin[indexMin]) {
                case (let max, let min) where max == "1" && min == "1":
                    arrMax[indexMax] = "0"
                case (let max, let min) where max == "1" || min == "1":
                    arrMax[indexMax] = "1"
                default:
                    arrMax[indexMax] = "0"
                }
            } else {
                isMore = arrMax[indexMax] == "2"
                arrMax[indexMax] = arrMax[indexMax] == "1" ? "1" : "0"
            }
            
            indexMax -= 1
            indexMin -= 1
        }
        
        if isMore {
            arrMax.insert("1", at: 0)
        }
        
        return arrMax
    }
}

