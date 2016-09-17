// Start of class Node
class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(d : Int) {
        data  = d
    }
} // End of class Node

// Start of class Tree
class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }
        
        if data <= root?.data {
            root?.left = insert(root?.left, data: data)
        } else {
            root?.right = insert(root?.right, data: data)
        }
            
        return root
    }
    
    func levelOrder(root: Node?) {
    		var output = [Int]()
        // level order aka BFS
        
        // check if tree is empty
        guard root?.data != nil else { return }
        
        // if tree not empty queue the root
        var queue = [Node]()
        queue.append(root!)
        
        // while queue not empty
        while false == queue.isEmpty {
            
            // take the front item in the queue
            // dequeue it
            // process it
            let processing = queue.removeFirst()
            output.append(processing.data)
            
            // queue the left node of the processed node
            if processing.left != nil {
                queue.append(processing.left!)
            }
            
            // queue the right node of the processed node
            if processing.right != nil {
            queue.append(processing.right!)
            }
        
        }
        for element in output {
        (print("\(element)", terminator: " "))
        }
	} // End of function levelOrder
} // End of class Tree

var root: Node?
var tree = Tree()

var t = Int(readLine()!)!

while t-- > 0 {
    root = tree.insert(root, data: Int(readLine()!)!)
}

tree.levelOrder(root)
