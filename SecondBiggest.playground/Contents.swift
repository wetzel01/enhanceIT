import UIKit

var input: [Int] = [1, 2, 3, 4, 5, 6]
//var input: [Int] = [1]

if input.count < 2 {
    print("nil")
} else {
    var element = input.max()
    let index = input.firstIndex(of: element ?? 0)
    input.remove(at: index ?? 0)
    
    element = input.max()
    print(element ?? "nil")
}
