//
//  CounterCategoryRow.swift
//  Snap Counter WatchKit Extension
//
//  Created by Max McKinney on 9/16/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import SwiftUI

struct CounterCategoryRow: View {
    
    let title:String
    let symbol:String
    
    var body: some View {
        HStack {
            // Symbol
            Image(systemName: self.symbol)
                .foregroundColor(Color("Accent Color"))
                .frame(minWidth: 25)
            
            // Row Title
            Text(self.title)
        }
    }
}

struct CounterCategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CounterCategoryRow(title: "Row Item", symbol: "waveform.path.ecg")
    }
}
