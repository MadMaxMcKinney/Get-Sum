//
//  CounterRow.swift
//  Snap Counter WatchKit Extension
//
//  Created by Max McKinney on 9/16/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import Foundation

struct CounterRow: Identifiable {
    let symbol:String
    let title:String
    var id:String {self.title}
}
