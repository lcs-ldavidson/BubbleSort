//
//  main.swift
//  BubbleSort
//
//  Created by Davidson, Liam on 2020-05-02.
//  Copyright © 2020 Davidson, Liam. All rights reserved.
//

import Foundation


func sortViaBubble() {
    
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
                
                //note
                hasSwapped = true
                
            }
            
        }
        
        //check if there was a swap in the last pass and if so, increase the number of sorted elements
        if hasSwapped {
            sortedElementCount += 1
        }
        
        //print the array after the pass through
        print(dataSet)
    }
    
}


func sortViaSelection() {
    
    //create an empty array
    var setOfData : [Int] = []
    var sortedElementsMaxIndex : Int = -1
    var elementToSwapIndex : Int = 1
    
    //populate the array to sort
    for _ in 1...10 {
        setOfData.append(Int.random(in: 1...100))
    }
    
    //print unsorted array
    print(setOfData)
    
    
    while sortedElementsMaxIndex < setOfData.count - 1 {
        
        elementToSwapIndex = sortedElementsMaxIndex + 1
        
        for i in sortedElementsMaxIndex + 1...setOfData.count - 1 {
            
            if setOfData[i] < setOfData[elementToSwapIndex] {
                elementToSwapIndex = i
            }
            
        }
        let placeholder = setOfData[sortedElementsMaxIndex + 1]
        
        setOfData[sortedElementsMaxIndex + 1] = setOfData[elementToSwapIndex]
        setOfData[elementToSwapIndex] = placeholder
        
//        setOfData.insert(setOfData[elementToSwapIndex], at: sortedElementsMaxIndex + 1)
//        setOfData.remove(at: sortedElementsMaxIndex)
//        setOfData.insert(placeholder, at: elementToSwapIndex)
//        setOfData.remove(at: elementToSwapIndex + 1)
        
        sortedElementsMaxIndex += 1
        
        print(setOfData)
    }
}


sortViaSelection()
