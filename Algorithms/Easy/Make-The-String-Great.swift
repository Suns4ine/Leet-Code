//
//  Make-The-String-Great.swift
//  
//
//  Created by Vyacheslav Pronin on 08.11.2022.
//

import Foundation

class Solution {
        struct Stack<T> {
            
            private var arr: [T] = []
            
            mutating func pust(_ elem: T) {
                arr.append(elem)
            }
            
            mutating func pop() -> T? {
                guard !arr.isEmpty else { return nil }
                return arr.removeLast()
            }
            
            func checkPop() -> T? {
                guard !arr.isEmpty else { return nil }
                return arr.last
            }
            
        }


        func makeGood(_ s: String) -> String {
            var s = Array(s)
            var stack = Stack<String.Element>()
            var index = s.count - 1
            var result = ""
            
            while index >= 0 {
                if let elem = stack.checkPop(),
                   ("a"..."z").contains(elem.lowercased()) && ("a"..."z").contains(s[index].lowercased()),
                   abs(Int(s[index].asciiValue ?? 0) - Int(elem.asciiValue ?? 0)) == 32 {
                    stack.pop()
                } else {
                    stack.pust(s[index])
                }
                
                index -= 1
            }
            
            while let elem = stack.checkPop() {
                result += String(elem)
                stack.pop()
            }
            
            return result
        }

}
