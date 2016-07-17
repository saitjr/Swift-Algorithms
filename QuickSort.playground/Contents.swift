//: Playground - noun: a place where people can play

import Foundation

func quickSort(array: [Int]) -> [Int] {
    var result = array
    if result.count == 0 || result.count == 1 {
        return result
    }
    let pivot = result[0]
    var left: [Int] = []
    var right: [Int] = []
    
    for index in 1 ..< result.count {
        let value = result[index]
        if value < pivot {
            left.append(value)
            continue
        }
        right.append(value)
    }
    left = quickSort(left)
    right = quickSort(right)
    result = left + [pivot] + right
    
    return result
}


let array = [9, 8, 1, 0, 6]
let result = quickSort(array)
print(result)