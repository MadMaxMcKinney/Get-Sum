//
//  ContentView.swift
//  Snap Counter WatchKit Extension
//
//  Created by Max McKinney on 9/16/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import SwiftUI

struct CounterView: View {
    
    @ObservedObject var counterVM:CounterViewModel
    
    var body: some View {
        VStack() {
            
            HStack(alignment:.top) {
                // Title and Count
                VStack(alignment: .leading) {
                    Text(counterVM.getName())
                        .font(.headline)
                    Text("\(counterVM.getCount())")
                        .font(.system(size: 43))
                        .fontWeight(.bold)
                        .padding(.top)
                }
                
                Spacer()
                
                // If configurable show overflow button, otherwise show reset button for normal counters.
                if(counterVM.isConfigurable()) {
                    
                } else {
                    Button(action: {
                        counterVM.resetCount()
                        WKInterfaceDevice.current().play(.success)
                    }, label: {
                        Image(systemName: "arrow.counterclockwise")
                            .foregroundColor(Color("Accent Color"))
                    })
                    .frame(maxWidth: 50)
                }
                
            }
            
            Spacer()
            
            // List of value buttons
            ScrollView(.horizontal) {
                HStack {
                    ForEach(self.counterVM.buttons, id: \.self) {buttonTypeList in
                        ForEach(0..<buttonTypeList.count) {index in
                            ValueButton(type: buttonTypeList[index], value: index+1, action: {
                                counterVM.updateCount(type: buttonTypeList[index], value: index+1)
                                WKInterfaceDevice.current().play(.click)
                            })
                        }
                    }
                }
            }
        }
        .padding(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(counterVM: CounterViewModel(counter: Counter(defaultName: "Workouts", id: "workouts")))
    }
}
