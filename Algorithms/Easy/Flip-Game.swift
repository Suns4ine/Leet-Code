//
//  Flip-Game.swift
//  
//
//  Created by Vyacheslav Pronin on 16.11.2022.
//

import Foundation

class Solution {
    func generatePossibleNextMoves(_ currentState: String) -> [String] {
        if currentState.count <= 1 { return [] }
        var currArr = Array(currentState), ret: [String] = []
        func flip(_ str: String, _ index: Int, _ char: Character) {
            var str = Array(str)
            let end = index + 1
            str[index] = char
            str[end] = char
            ret.append(String(str))
        }
        for i in 0 ..< currentState.count - 1 {
            if currArr[i] == "+" && currArr[i + 1] == "+" {
                flip(currentState, i, "-")
            }
        }
        return ret
    }
}
