let input = readLine()!

let arr = input.characters.map { String($0) } // array of strings

var wordCount = 1
for i in 0.stride(to: arr.count, by: 1) {

    if arr[i].uppercaseString == arr[i] {
        wordCount += 1  // if we wanted to create a wordlist we could replace arr[i] with " \(arr[i].lowercaseString)" then stitch the array back together to form a space separated sentence
    }

}

print(wordCount)
