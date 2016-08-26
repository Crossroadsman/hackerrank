//Algorithms
//Implementation
//Jumping on the clouds

// input
// n
// x x x x x
//
// where n is Int, number of clouds
// x is Int, 1 if thunder, 0 if not

// output
// m
// minimum distance


// this seems to be a directed graph problem

//1. get input
let numberOfClouds = Int(String(readLine()!))!

var arr = readLine()!.characters.split(" ").map {Int(String($0))!}

var goal = arr.count - 1
var distance = 0
var currentPosition = 0
var lastPosition = 0

func canGo(position: Int) -> Bool {
  // code goes here
  // check if proposed position is blocked
  if position >= arr.count { return false }
  if arr[position] == 1 { return false }
  if arr[position] == 2 { 
    arr[position] = 0 
    return false
  }
  return true
}

func backup() {
  // code goes here
  // figure out how far back to go
  // and mark path taken as blocked
  arr[currentPosition] = 2
  currentPosition = lastPosition
}

func jump() {
    //print("current position: \(currentPosition), distance: \(distance)")

  // at destination?
  if currentPosition == goal {
    return
  } else 

  // able to go right?
  if canGo(currentPosition + 2) {
    lastPosition = currentPosition
    distance += 1
    currentPosition += 2
    jump()
  } else 

  // able to go left?
  if canGo(currentPosition + 1) {
    lastPosition = currentPosition
    distance += 1
    currentPosition += 1
    jump()
  } else {

  backup()
  
  }

}

jump()
print(distance)
