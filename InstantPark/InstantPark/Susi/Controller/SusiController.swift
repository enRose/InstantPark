//
//  RouteEventReducer.swift
//  InstantPark
//
//  Created by Yini Yin on 18/08/19.
//  Copyright © 2019 Yini Yin. All rights reserved.
//

import SwiftUI
import Foundation

class SusiController {
    
    func gotoSusiView(state: SusiState) -> SusiState {
        state.showSU = false
        state.showSI = false
        state.showSUSI = true
        
        return state
    }

    func gotoSignInView(state: SusiState) -> SusiState {
        state.showSU = false
        state.showSI = true
        state.showSUSI = false
        
        return state
    }

    func gotoSignUpView(state: SusiState) -> SusiState {
        state.showSU = true
        state.showSI = false
        state.showSUSI = false
        
        return state
    }
}
