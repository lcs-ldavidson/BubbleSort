//
//  main.swift
//  BubbleSort
//
//  Created by Davidson, Liam on 2020-05-02.
//  Copyright © 2020 Davidson, Liam. All rights reserved.
//

import Foundation



//create an empty array
var dataSet : [Int] = []
var hasSwapped : Bool = true

//populate the array to sort
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

//print unsorted array
print(dataSet)

var sortedElementCount = 2

while hasSwapped == true {
    
    hasSwapped = false
    
    //one pass through array to float highest number to the end
    for j in 0...dataSet.count - sortedElementCount {
        
        //compare left value to right value
        if dataSet[j] > dataSet[j+1] {
            let temporaryValue = dataSet[j]
            dataSet[j] = dataSet[j+1]
            dataSet[j+1] = temporaryValue
            
            hasSwapped = true
            
        }
        
    }
    
    if hasSwapped {
        sortedElementCount += 1
    }
    
    //print the array after the pass through
    print(dataSet)
}
