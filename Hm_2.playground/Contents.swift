// ---------------------------1---------------------------

func countUniqueWords(sentence: String) -> Int {
    let words = sentence.lowercased().split(separator: " ")
    let uniqueWords = Set(words)
    return uniqueWords.count
}

print(countUniqueWords(sentence: "apple Orange pineapple PEAR"))
print(countUniqueWords(sentence: "apple aPPle appLe Apple"))
print()

// ---------------------------2---------------------------

func correctOrNot(string: String) {
    if string[string.startIndex] == "(" &&
        string.last == ")" &&
        string.filter({ $0 == "(" }).count == string.filter({ $0 == ")" }).count {

        var countOpened = 0
        var flag = true
        let countString = string.count

        for i in 0..<countString {
            let elem = string[string.index(string.startIndex, offsetBy: i)]
            if elem == "(" {
                countOpened += 1
            } else {
                if countOpened > 0 {
                    countOpened -= 1
                } else {
                    flag = false
                    break
                }
            }
        }
        if countOpened == 0 && flag {
            print("Корректная")
        } else {
            print("Некорректная")
        }
    } else {
        print("Некорректная")
    }
}

correctOrNot(string: "(())")
correctOrNot(string: "))((")
correctOrNot(string: "()()()")
print()

// ---------------------------3---------------------------

func sortByCount(array: Array<String>) {
    var dict: [Int: Array<String>] = [:]

    for word in array {
        let count = word.count
        dict[count, default: []].append(word)
    }
    let sortedKeys = Array(dict.keys).sorted()
    for key in sortedKeys {
        print(key, "-", dict[key]!)
    }
}

sortByCount(array: ["a", "bb", "b", "cccc"])
print()
sortByCount(array: ["a", "b", "c"])
print()

// ---------------------------4---------------------------

func avgValue(dict: [String : Double?]) {
    let realValues = dict.compactMap { $0.value }
    let count = Double(realValues.count)
    if count != 0 {
        print(realValues.reduce(0, +) / count)
    } else {
        print("Никто не сдал")
    }
}

avgValue(dict: ["A": 4, "B": nil, "C": nil])
avgValue(dict: ["A": nil, "B": nil, "C": nil])
avgValue(dict: ["A": 4, "B": 5, "C": 7])
print()

// ---------------------------5---------------------------

enum Operations {
    case sum(Int, Int)
    case sub(Int, Int)
    case mult(Int, Int)
    case div(Int, Int)
    case square(Int)
}

let operations: [Operations] = [.sum(1, 2), .square(2), .sub(2, 4), .mult(2, 5), .div(6, 2), .square(2)]

for i in operations {
    switch i {
    case .sum(let a, let b):
        print("Сумма - \(a + b)")
    case .sub(let a, let b):
        print("Разность - \(a - b)")
    case .mult(let a, let b):
        print("Произведение - \(a * b)")
    case .div(let a, let b):
        print("Частное - \(a / b)")
    case .square(let a):
        print("Квадрат - \(a * a)")
    }
}


