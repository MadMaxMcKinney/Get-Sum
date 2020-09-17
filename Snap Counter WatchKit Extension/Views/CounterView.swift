//
//  ContentView.swift
//  Snap Counter WatchKit Extension
//
//  Created by Max McKinney on 9/16/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import SwiftUI

struct CounterView: View {
    var body: some View {
        VStack() {
            
            HStack(alignment:.top) {
                // Title and Count
                VStack(alignment: .leading) {
                    Text("Jumps")
                        .font(.headline)
                    Text("201")
                        .font(.system(size: 43))
                        .fontWeight(.bold)
                        .padding(.top)
                }
                
                Spacer()
                
                // Reset button
                Button(action: {}, label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundColor(Color("Accent Color"))
                })
                .onTapGesture { self.playHaptic() }
                .frame(maxWidth: 50)
            }
            
            Spacer()
            
            // List of value buttons
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<4) {index in
                        Button(action: {}, label: {
                            Text("+ \(index+1)")
                        })
                        .background(Color("Accent Color"))
                        .clipShape(RoundedRectangle(cornerRadius: 9))
                    }
                }
            }
        }
        .padding(.top)
    }
    
    func playHaptic() {
        WKInterfaceDevice.current().play(.success)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
