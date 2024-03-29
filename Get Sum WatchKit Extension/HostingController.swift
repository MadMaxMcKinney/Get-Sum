//
//  HostingController.swift
//  Snap Counter WatchKit Extension
//
//  Created by Max McKinney on 9/16/20.
//  Copyright © 2020 Max McKinney. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<ListCounterView> {
    override var body: ListCounterView {
        return ListCounterView(listCounterVM: ListCounterViewModel())
    }
}
