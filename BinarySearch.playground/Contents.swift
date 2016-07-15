//: Playground - noun: a place where people can play

import Foundation

func binarySearch(num: Int, array: [Int]) -> Int {
    var startIndex = 0
    var endIndex = array.count - 1
    
    while (startIndex <= endIndex) {
        let centerIndex = (endIndex + startIndex) / 2
        let centerNum = array[centerIndex]
        
        if num == centerNum {
            return centerIndex
        }
        
        if num > centerNum {
            startIndex = centerIndex + 1
            continue
        }
        endIndex = centerIndex - 1
    }
    return -1
}

var array: [Int] = []
for i in 1...50 {
    array.append(i * 2)
}
let index = binarySearch(5, array: array)
print(index)