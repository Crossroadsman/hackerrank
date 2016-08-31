let line1 = readLine()!.characters.split(" ").map { Int(String($0))! }
let (n, q) = (line1[0], line1[1])

var seqList = [[Int]](count: n, repeatedValue: [])
var lastAns: Int = 0

func query1 (x x: Int, y: Int) {

  let i = (x ^ lastAns) % n // bitwise XOR
  seqList[i].append(y)
}

func query2 (x x: Int, y: Int) {
  // it is guaranteed in the specifications that query2
  // will never query an empty sequence or index
  
  //Find the sequence, seq, at (( x ^ lastAns) % n)
  let i = (x ^ lastAns) % n // bitwise XOR
  let seq = seqList[i]
  
  // Find the value of element y % size in seq
  let size = seq.count
  
  lastAns = seq[y % size]
  print(lastAns)
}

for i in 0.stride(to: q, by: 1) {

  let line = readLine()!.characters.split(" ").map { Int(String($0))! }
  let (queryType, x, y) = (line[0], line[1], line[2])

  if queryType == 1 { 
    query1(x: x, y: y) 
  } else {
    query2(x: x, y: y)
  }

}
