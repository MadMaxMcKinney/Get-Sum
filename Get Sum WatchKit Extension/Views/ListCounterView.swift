//
//  ListCounterView.swift
//  Snap Counter WatchKit Extension
//
//  Created by Max McKinney on 9/16/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import SwiftUI

struct ListCounterView: View {
    
    @ObservedObject var listCounterVM:ListCounterViewModel
    
    var body: some View {
        List {
            ForEach(listCounterVM.rows) {row in
                NavigationLink(destination: CounterView(counterVM: CounterViewModel(name: row.title))) {
                    CounterCategoryRow(title: row.title, symbol: row.symbol)       
                }
            }
        }.navigationBarTitle("Get Sum")
    }
}

struct ListCounterView_Previews: PreviewProvider {
    static var previews: some View {
        ListCounterView(listCounterVM: ListCounterViewModel())
    }
}
