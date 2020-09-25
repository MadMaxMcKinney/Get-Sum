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
    @Published private var counter:Counter
    
    init(counter:Counter) {
        self.counter = counter
    }
    
    func getCount() -> Int {
        return counter.count
    }
    
    func getName() -> String {
        return counter.name
    }
    
    func isConfigurable() -> Bool {
        return counter.isConfigurable
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
    
    func updateName(newName: String) {
        counter.updateName(newName: newName)
    }
    
}
