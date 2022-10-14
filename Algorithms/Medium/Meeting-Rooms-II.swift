//
//  Meeting-Rooms-II.swift
//  
//
//  Created by Vyacheslav Pronin on 14.10.2022.
//

import Foundation

class Solution {
    
    // O(n) * O(m)
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        guard !intervals.isEmpty else { return 0 }
        
        typealias Range = (left: Int, right: Int)
        
        var intervals = intervals.sorted { $0.first! < $1.first! }
        let firstTime = intervals.removeFirst()
        var arr: [Range] = [(left: firstTime[0], right: firstTime[1])]
        
        for elem in intervals {
            if let left = elem.first,
               let right = elem.last {
                let range = (left: left, right: right)
                var isNotHave = false
                
                for index in 0..<arr.count {
                    if arr[index].left >= range.right {
                        arr[index].left = range.left
                        isNotHave = false
                        break
                    } else if arr[index].right <= range.left {
                        arr[index].right = range.right
                        isNotHave = false
                        break
                    }
                    isNotHave = true
                }
                
                if isNotHave {
                    arr.append((left: left, right: right))
                }
            }
        }
        
        return arr.count
    }
    
    // O(n * Logn) 
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        var arrStart = [Int]()
        var arrEnd = [Int]()
        var startIndex = 0
        var endIndex = 0
        var rooms = 0
        
        for elem in intervals {
            if let first = elem.first,
               let last = elem.last {
                arrStart.insert(first, at: isIndex(arrStart, numb: first))
                arrEnd.insert(last, at: isIndex(arrEnd, numb: last))
            }
        }
        
        while startIndex < intervals.count {
            
            if arrStart[startIndex] >= arrEnd[endIndex] {
                rooms -= 1
                endIndex += 1
            }
            rooms += 1
            startIndex += 1
        }
        
        return rooms
    }
    
    func isIndex(_ array: [Int], numb: Int) -> Int {
        guard !array.isEmpty else { return 0 }
        var left = 0
        var right = array.count - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if array[index] >= numb {
                right = index
            } else {
                left = index + 1
            }
        }
        
        return array[left] < numb ? left + 1 : left
    }
    
}
