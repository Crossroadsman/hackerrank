let line1 = readLine()!.characters.split(" ").map { Int(String($0))! }
let (chaptersInBook, maximumProblemsPerPage) = (line[0], line1[1])

let problemsPerChapter = readLine()!.characters.split(" ").map { Int(String($0))! }


