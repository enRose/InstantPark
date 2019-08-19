//
//  ViewRouter.swift
//  InstantPark
//
//  Created by Yini Yin on 18/08/19.
//  Copyright © 2019 Yini Yin. All rights reserved.
//

import SwiftUI
import Combine

final class RouterData: ObservableObject  {
    @Published var showSI = false
    @Published var showSU = false
    @Published var showSUSI = true
}
