//// ---------------------------1---------------------------

//let s = "apple Orange pineapple PEAR"
//
//let spl = s.lowercased().split(separator: " ")
//let sett = Set(spl)
//print(sett.count)
//
//let s1 = "apple aPPle appLe Apple"
//let spl = s.lowercased().split(separator: " ")
//let sett = Set(spl)
//print(sett.count)

//// ---------------------------2---------------------------

//let t = "(())"
//
//if t[t.startIndex] == "(" &&
//    t.last == ")" &&
//    t.filter({ $0 == "(" }).count == t.filter({ $0 == ")" }).count {
//
//    var co = 0
//    var flag = true
//    let n = t.count
//
//    for i in 0..<n {
//        let el = t[t.index(t.startIndex, offsetBy: i)]
//        if el == "(" {
//            co += 1
//        } else {
//            if co > 0 {
//                co -= 1
//            } else {
//                flag = false
//                break
//            }
//        }
//    }
//    if co == 0 && flag {
//        print("Корректная")
//    } else {
//        print("Некорректная")
//    }
//} else {
//    print("Некорректная")
//}

//// ---------------------------3---------------------------

//let array1 = ["a", "bb", "b", "cccc"]
//let array = ["a", "b", "c"]
//
//var d: [Int: Array<String>] = [:]
//
//for w in array1 {
//    let c = w.count
//
//    d[c, default: []].append(w)
//}
//
//let sortedKeys = Array(d.keys).sorted()
//for key in sortedKeys {
//    print(key, "-", d[key]!)
//}

//// ---------------------------4---------------------------

//let dict1 = ["A": 4, "B": 4, "C": 4] as [String: Int?]
//let dict2 = ["A": nil, "B": nil, "C": nil] as [String: Int?]
//
//let val = dict1.values
//
//var sum = 0
//var co = 0
//
//for v in val {
//    switch v {
//        case .none:
//            continue
//        case .some(let a):
//            sum += a
//            co += 1
//    }
//}
//if co == 0 {
//    print("Никто не сдал")
//} else {
//    print(sum / co)
//}

//// ---------------------------5---------------------------

//enum Fig {
//    case sum(Int, Int)
//    case sub(Int, Int)
//    case mult(Int, Int)
//    case div(Int, Int)
//    case square(Int)
//}
//
//let array1: [Fig] = [.sum(1, 2), .square(2), .sub(2, 4), .mult(2, 5), .div(6, 2), .square(2)]
//
//for i in array1 {
//    switch i {
//    case .sum(let a, let b):
//        print("Сумма - \(a + b)")
//    case .sub(let a, let b):
//        print("Разность - \(a - b)")
//    case .mult(let a, let b):
//        print("Произведение - \(a * b)")
//    case .div(let a, let b):
//        print("Частное - \(a / b)")
//    case .square(let a):
//        print("Квадрат - \(a * a)")
//    }
//}

