import Foundation // for ceil()

let line1 = readLine()!.characters.split(" ").map { Int(String($0))! }
let (chaptersInBook, maximumProblemsPerPage) = (line1[0], line1[1])

let problemsPerChapter = readLine()!.characters.split(" ").map { Int(String($0))! }

var startPageOfNextChapter = 1
var specialProblemCount = 0

func pageForProblem(problemNumber problemNumber: Int, problemsPerPage: Int) -> Int {
    return Int(ceil(Double(problemNumber) / Double(problemsPerPage)))
}

/* debug
print("specialProblemCount: \(specialProblemCount)")
print("max Problems per page: \(maximumProblemsPerPage)")
*/ 

for i in 0 ..< chaptersInBook {
    
    let problemsInChapter = problemsPerChapter[i]
    let startPage = startPageOfNextChapter
    
    /* debug
    print(" chapter: \(i + 1) of \(chaptersInBook)")
    print(" problemsInChapter: \(problemsInChapter)")
    print(" start page of chapter: \(startPage)")
    */
    
    // determine length of chapter in pages
    let numberOfPagesInChapter = Int(ceil(Double(problemsInChapter) / Double(maximumProblemsPerPage)))
    startPageOfNextChapter = startPage + numberOfPagesInChapter
    
    /* debug
    print(" this chapter has \(numberOfPagesInChapter) pages")
    print(" so next chapter will begin on page \(startPageOfNextChapter)")
    */
    
    // determine if there are any special problems in chapter
    for j in 1 ... numberOfPagesInChapter {
        
        guard problemsInChapter >= (startPageOfNextChapter - 1) else { break }
        
        let pageForProblemJ = pageForProblem(problemNumber: j + (startPage - 1), problemsPerPage: maximumProblemsPerPage) + (startPage - 1)
        if pageForProblemJ == j + (startPage - 1) { specialProblemCount += 1 }
        
        /* debug
        print("   page for the problem \(j + (startPage - 1)) is \(pageForProblemJ)")
        print("   therefore specialProblemCount is now \(specialProblemCount)")
        */
        
    }
}

print(specialProblemCount)
