//
//  ValueButton.swift
//  Snap Counter WatchKit Extension
//
//  Created by Max McKinney on 9/17/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import SwiftUI

struct ValueButton: View {
    let type:CounterButtonType
    let value:Int
    let action:()->Void
    
    var body: some View {
        Button(action: self.action, label: {
            // Todo move this from an enum to a class that can store the +/- values
            if(type == .ADD) {
                Text("+ \(self.value)")
            }
            if(type == .SUBTRACT) {
                Text("- \(self.value)")
            }
        })
        // Add a check for what type this is to darken the background color for subtracting types
        .background(self.type == .ADD ? Color("Accent Color") : Color("Secondary Color"))
        .clipShape(RoundedRectangle(cornerRadius: 9))
        .frame(width: 50)
    }
}

enum CounterButtonType {
    case ADD
    case SUBTRACT
}

struct ValueButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ValueButton(type: .ADD, value: 2, action: {})
            ValueButton(type: .SUBTRACT, value: 2, action: {})
        }
    }
}
