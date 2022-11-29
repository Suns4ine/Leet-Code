//
//  Insert-Delete-GetRandom-O(1).swift
//  
//
//  Created by Vyacheslav Pronin on 29.11.2022.
//

import Foundation
class RandomizedSet {

    var map:[Int:Int] = [:]
    var list:[Int] = []

    func insert(_ val: Int) -> Bool {
        if map[val] != nil { return false }
        list.append(val)
        map[val] = list.count - 1
        return true
    }
    
    func remove(_ val: Int) -> Bool {
        guard let index = map[val] else {
            return false
        }
        map[val] = nil
        if index == list.count - 1{
            list.removeLast()
        }else{
            let replace = list.last
            list.swapAt(index, list.count - 1)
            list.removeLast()
            map[replace!] = index
        }
        return true
    }
    
    func getRandom() -> Int {
        let randomInt = Int.random(in: 0..<list.count)
        return list[randomInt]
    }
}
