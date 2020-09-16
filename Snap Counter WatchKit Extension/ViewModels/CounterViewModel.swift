//
//  CounterViewModel.swift
//  Snap Counter WatchKit Extension
//
//  Created by Max McKinney on 9/16/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import Foundation

class CounterViewModel: ObservableObject {
    
    @Published private var counter:Counter
    
    init(counter:Counter) {
        self.counter = counter
    }
    
}
