//: Playground - noun: a place where people can play

import Foundation

func selectionSort(array: [Int]) -> [Int] {
    var result = array
    
    for i in 0 ..< result.count {
        var maxIndex = i
        for j in i ..< result.count {
            if result[maxIndex] < result[j] {
                maxIndex = j
            }
        }
        let temp = result[i]
        result[i] = result[maxIndex]
        result[maxIndex] = temp
    }
    
    return result
}

let array = [1, 4, 9, 2, 5]
let result = selectionSort(array)
print(result)