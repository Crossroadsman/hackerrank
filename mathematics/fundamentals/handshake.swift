let testCases = Int(String(readLine()!))!

func triangle(input: Int) -> Int {
    return input * (input + 1) / 2
}

for i in 0.stride(to: testCases, by: 1) {
    print(triangle(Int(String(readLine()!))! - 1))
}
