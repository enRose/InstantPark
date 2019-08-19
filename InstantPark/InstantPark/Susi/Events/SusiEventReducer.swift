//
//  RouteEventReducer.swift
//  InstantPark
//
//  Created by Yini Yin on 18/08/19.
//  Copyright © 2019 Yini Yin. All rights reserved.
//

// This is a combo of dispatcher and reducer.
// Separate them later if needs arise.
// Also a possibility of generic global reducer/dispatcher in later stage.

import SwiftUI
import Foundation

class SusiEventReducer {
    var rules: Dictionary = [SusiEvent: (data: RouterData) -> Void]()
    
    var eventHistory: [SusiEvent] = []
    
    
    init() {
        self.rules[SusiEvent.SU] = self.reduceSU
        self.rules[SusiEvent.SI] = self.reduceSI
        self.rules[SusiEvent.SUSI] = self.reduceBackToSusi
    }
    
    func dispatch(e: SusiEvent, data: RouterData) {
        self.eventHistory.append(e)
        
        (self.rules[e] ?? self.doNothing)(data)
    }
    
    func reduceSU(data: RouterData) -> Void {
        data.showSU = true
        data.showSUSI = false
        data.showSI = false
    }
    
    func reduceSI(data: RouterData) -> Void {
        data.showSU = false
        data.showSUSI = false
        data.showSI = true
    }
    
    func reduceBackToSusi(data: RouterData) -> Void {
       data.showSU = false
       data.showSUSI = true
       data.showSI = false
    }
    
    func doNothing(data: RouterData) {
    }
}
