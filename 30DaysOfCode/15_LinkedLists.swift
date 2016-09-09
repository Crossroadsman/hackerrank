func insert(head: Node!, data: Int!) -> Node {
    
    // if head is nil
    guard head != nil else {return Node(data: data)}
    
   
    // otherwise
    var currentNode = head
    while currentNode.next != nil {
        currentNode = currentNode.next!
    }
    currentNode.next = Node(data: data)
    return head
    
}
