class Solution {
  //Write your code here
  
  var queue = [Character]()
  var stack = [Character]()
  
  func pushCharacter(element: Character) {
    stack.append(element)
  }
  
  func popCharacter() -> Character {
    return stack.removeLast()
  }
  
  func enqueueCharacter(element: Character) {
    queue = queue + [element]
  }
  
  func dequeueCharacter() -> Character {
    let output = queue[0]
    queue = Array(queue.dropFirst(1))
    return output
  }

