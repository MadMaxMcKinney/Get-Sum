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
        CounterRow(symbol: "waveform.path.ecg", title: "Workouts"),
        CounterRow(symbol: "waveform.path.ecg", title: "Medical"),
        CounterRow(symbol: "waveform.path.ecg", title: "Scores"),
        CounterRow(symbol: "waveform.path.ecg", title: "Successes"),
        CounterRow(symbol: "waveform.path.ecg", title: "Failures")
    ]
    
    init() {
        
    }
}
