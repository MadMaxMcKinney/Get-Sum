//
//  Counter.swift
//  Snap Counter WatchKit Extension
//
//  Created by Max McKinney on 9/16/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import Foundation

struct Counter {
    let id:String
    var name:String
    var isConfigurable:Bool = false
    var count:Int
    
    init(defaultName:String, id:String) {
        self.id = id
        
        // Get the name, if no name exists use the defaultName prop
        name = UserDefaults.standard.string(forKey: "\(self.id)name") ?? defaultName
        
        // Get the count, if no count exists it returns a 0
        count = UserDefaults.standard.integer(forKey: "\(self.id)count")
    }
    
    init(defaultName:String, id:String, isConfigurable:Bool) {
        self.init(defaultName: defaultName, id: id)
        self.isConfigurable = isConfigurable
    }
    
    func saveValue() {
        UserDefaults.standard.set(count, forKey: "\(self.id)count")
    }
    
    mutating func updateName(newName: String) {
        name = newName
        UserDefaults.standard.set(name, forKey: "\(self.id)name")
    }
    
}
