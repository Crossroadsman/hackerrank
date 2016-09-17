//: [Previous](@previous)

import Foundation

class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(data: Int) {
        self.data = data
    }
}

class Tree {
    
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(data: data)
        }
        
        if data <= root!.data {
            root?.left = insert(root: root?.left, data: data)
        }
        
        if data >= root!.data {
            root?.right = insert(root: root?.right, data: data)
        }
        
        return root
    }
    
    func getHeight(root: Node?) -> Int {
        //The height of a binary search tree is the number of edges between the tree's root and its furthest leaf. 
        
        if root?.left != nil || root?.right != nil {
            return 1 + max(getHeight(root: root?.left), getHeight(root: root?.right))
        } else {
            return 0
        }
        
    }
    
}
