//
//  DataStore.swift
//  InstantPark
//
//  Created by Yini Yin on 19/08/19.
//  Copyright © 2019 Yini Yin. All rights reserved.
//

import SwiftUI
import Combine

final class AppState: ObservableObject {
    @Published var susiState: SusiState = SusiState()
}
