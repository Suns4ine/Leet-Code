//
//  Word-Search-II.swift
//  
//
//  Created by Vyacheslav Pronin on 05.11.2022.
//

import Foundation

class Solution {
    func findWords(_ board: [[Character]], _ words: [String]) -> [String] {
        
        class TrieNode {
            var children = [Character: TrieNode]()
            var word: String?
            
            func getNode(_ char: Character) -> TrieNode? {
                return children[char]
            }
        }
        
        class Trie {
            var root: TrieNode
            
            init() {
                root = TrieNode()
            }
            
            func insert(_ word: String) {
                var word = Array(word)
                var cur = root
                for i in 0..<word.count {
                    if cur.children[word[i]] == nil {
                        cur.children[word[i]] = TrieNode()
                    }
                    cur = cur.children[word[i]]!
                }
                cur.word = String(word)
            }
            
            func search(_ word: [Character]) -> Bool {
                var cur = root
                for i in 0..<word.count {
                    guard let child = cur.children[word[i]] else {
                        return false
                    }
                    cur = child
                }
                return cur.word == nil
            }
        }
        
        // main func
        let m = board.count
        guard m > 0 else { return [] }
        let n = board[0].count
        guard n > 0 else { return [] }
        var ansSet = Set<String>()
        
        var visited = Array(repeating: Array(repeating: false, count: n), count: m)
        let trie = Trie()
        for word in words {
            trie.insert(word)
        }
        
        func dfs(_ row: Int, _ col: Int, _ currentNode: TrieNode, _ board: [[Character]]) {
            if row < 0 || row >= m || col < 0 || col >= n || visited[row][col] == true { return }
            if let word = currentNode.word {
                ansSet.insert(word)
            }
            
            visited[row][col] = true
            
            if row > 0 {
                if let node = currentNode.getNode(board[row-1][col]) {
                    dfs(row-1, col, node, board)
                }
            }
            
            if row < m-1 {
                if let node = currentNode.getNode(board[row+1][col]) {
                    dfs(row+1, col, node, board)
                }
            }
            
            if col > 0 {
                if let node = currentNode.getNode(board[row][col-1]) {
                    dfs(row, col-1, node, board)
                }
            }
            
            if col < n-1 {
                if let node = currentNode.getNode(board[row][col+1]) {
                    dfs(row, col+1, node, board)
                }
            }
            
            visited[row][col] = false
        }
        
        for i in 0..<m {
            for j in 0..<n {
                if let node = trie.root.getNode(board[i][j]) {
                    dfs(i, j, node, board)
                }
            }
        }
        
        return Array(ansSet)
    }
}
