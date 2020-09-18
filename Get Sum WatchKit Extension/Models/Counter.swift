//
//  Counter.swift
//  Snap Counter WatchKit Extension
//
//  Created by Max McKinney on 9/16/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import Foundation

struct Counter {
    private let dataKey:String
    
    var count:Int
    
    init(dataKey:String) {
        self.dataKey = dataKey
        
        count = UserDefaults.standard.integer(forKey: self.dataKey)
    }
    
    func saveValue() {
        UserDefaults.standard.set(count, forKey: dataKey)
    }
    
}
