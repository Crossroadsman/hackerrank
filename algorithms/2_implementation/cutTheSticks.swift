//Algorithms
//Implementation
//Cut the sticks

// input
// n
// x x x x x
//
// where n is Int, number of sticks
// x is Int, length of stick

// output
// a sequence of Ints (one per line) being the number of sticks remaining
// prior to each cut (until only one size remains)


//1. get input
let numberOfSticks = Int(String(readLine()!))!
var arr = readLine()!.characters.split(" ").map {Int(String($0))!}

//2. sort
arr = arr.sort()

//3. compute sticks and output
func cutTheSticks(input input: [Int]) {

  //3a. check if number of unique values in array == 1 (print arr.count and end)
  guard Set(arr).count > 1 else { 
    print(arr.count)
    return
  }

  //3b. print(arr.count)
  print(arr.count)
  
  //3c. map the array by deducting the lowest value from every value in the array
  arr = arr.map {$0 - arr[0]}
  
  //3d. remove any 0 values from array
  arr = arr.filter {$0 > 0}
  
  //3e. repeat
  cutTheSticks(input: arr)

}

cutTheSticks(input: arr)
