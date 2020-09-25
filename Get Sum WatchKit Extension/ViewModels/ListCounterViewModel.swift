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
        CounterRow(symbol: "flame", counter: Counter(defaultName: "Workouts", id: "workouts")),
        CounterRow(symbol: "waveform.path.ecg", counter: Counter(defaultName: "Medical", id: "medical")),
        CounterRow(symbol: "gamecontroller", counter: Counter(defaultName: "Scores", id: "scores")),
        CounterRow(symbol: "dollarsign.circle", counter: Counter(defaultName: "Finance", id: "finance")),
        CounterRow(symbol: "pencil", counter: Counter(defaultName: "School", id: "school")),
        CounterRow(symbol: "checkmark", counter: Counter(defaultName: "Successes", id: "successes")),
        CounterRow(symbol: "xmark", counter: Counter(defaultName: "Failures", id: "failures")),
        CounterRow(symbol: "stopwatch", counter: Counter(defaultName: "Generic", id: "generic")),
        CounterRow(symbol: "trash", counter: Counter(defaultName: "Custom Name", id: "custom", isConfigurable: true))
    ]
    
    init() {
        
    }
}
