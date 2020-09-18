//
//  CounterViewModel.swift
//  Snap Counter WatchKit Extension
//
//  Created by Max McKinney on 9/16/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import Foundation

class CounterViewModel: ObservableObject {
    
    // Todo: Refactor this to use a class that can store a value with the type
    public let buttons:[[CounterButtonType]] = [
        [.ADD, .ADD, .ADD],
        [.SUBTRACT]
    ]
    public let name:String
    @Published private var counter:Counter
    
    init(name:String) {
        self.name = name
        
        // Create a counter using the name of this VM as the key for saving the values to UserDefaults
        counter = Counter(dataKey: self.name)
    }
    
    func getCount() -> Int {
        return counter.count
    }
    
    func updateCount(type:CounterButtonType, value:Int) {
        switch type {
        case .ADD:
            counter.count += value
        case .SUBTRACT:
            counter.count -= value
        }
        counter.saveValue()
    }
    
    func resetCount() {
        counter.count = 0
        counter.saveValue()
    }
    
}
