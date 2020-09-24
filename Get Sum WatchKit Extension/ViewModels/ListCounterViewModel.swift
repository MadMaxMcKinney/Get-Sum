//
//  ListCounterViewModel.swift
//  Snap Counter WatchKit Extension
//
//  Created by Max McKinney on 9/16/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import Foundation

class ListCounterViewModel: ObservableObject {
    @Published var rows:[CounterRow] = [
        CounterRow(symbol: "flame", title: "Workouts"),
        CounterRow(symbol: "waveform.path.ecg", title: "Medical"),
        CounterRow(symbol: "gamecontroller", title: "Scores"),
        CounterRow(symbol: "dollarsign.circle", title: "Finance"),
        CounterRow(symbol: "pencil", title: "School"),
        CounterRow(symbol: "checkmark", title: "Successes"),
        CounterRow(symbol: "xmark", title: "Failures"),
        CounterRow(symbol: "stopwatch", title: "Generic")
    ]
    
    init() {
        
    }
}
