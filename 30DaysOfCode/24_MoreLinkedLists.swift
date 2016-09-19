// Start of class Node
class Node {
    var data: Int
    var next: Node?
    
    init(d: Int) {
        data = d
    }
} // End of class Node

// Start of class LinkedList
class LinkedList {
    func insert(head: Node?, data: Int) -> Node? {
        if head == nil {
            return Node(d: data)
        }
        
        head?.next = insert(head?.next, data: data)
            
        return head
    }
    
    func display(head: Node?) {
        if head != nil {
            print(head!.data, terminator: " ")
            
            display(head?.next)
        }
    }
    
    // Start of function removeDuplicates
    func removeDuplicates(head: Node?) -> Node? {
    guard head != nil else { return head }
        
        // eliminate any duplicates for head
        var current = head!
        
        while current.next != nil {
            
            if current.next?.data == current.data {
                
                var temp = current
                while temp.next?.data == current.data {
                    temp = temp.next!
                }
                if temp.next == nil {
                    current.next = nil
                    break
                } else {
                    current.next = temp.next
                }
                
                
            }
            current = current.next!
        }
        
        // repeat for each .next
        
        removeDuplicates(head?.next)
        return head
	} // End of function removeDuplicates
} // End of class LinkedList

var head: Node?
var linkedList = LinkedList()

var t = Int(readLine()!)!

while t-- > 0 {
    head = linkedList.insert(head, data: Int(readLine()!)!)
}

linkedList.display(linkedList.removeDuplicates(head))
