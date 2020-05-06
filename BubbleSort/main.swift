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

//populate the array to sort
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

//print unsorted array
print(dataSet)

for i in 1...dataSet.count {
    
    //one pass through array to float highest number to the end
    for j in 0...dataSet.count - 2 {
        
        //compare left value to right value
        if dataSet[j] > dataSet[j+1] {
            let temporaryValue = dataSet[j]
            dataSet[j] = dataSet[j+1]
            dataSet[j+1] = temporaryValue
            
        }
        //print the array after the pass through
        print(dataSet)
    }
    //print the array after the pass through
    print(dataSet)
}
