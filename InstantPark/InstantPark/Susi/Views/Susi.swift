//
//  ContentView.swift
//  InstantPark
//
//  Created by Yini Yin on 17/08/19.
//  Copyright © 2019 Yini Yin. All rights reserved.
//

import SwiftUI

struct SusiView: View {
    @EnvironmentObject var appState: AppState
    
    let controller: SusiController = SusiController()
    
    var body: some View {
        VStack {
            
            Text("Find an instant car park")
                 .font(.title)
              
             Text("at your pace, your rate")
            
             Button(action: {
                self.appState.susiState = self.controller.gotoSignUpView(state: self.appState.susiState)
             }) {
                 Text("Create an account")
             }
             .padding(.bottom)
             .shadow(radius: 10)
            
            HStack {
                Text("Have an account already?")
                    .offset(y: 230)
                
                Button(action: {
                    self.appState.susiState = self.controller.gotoSignInView(state: self.appState.susiState)
                }) {
                Text("Log in")
                }.offset(y: 230)
            }
        }
    }
}

#if DEBUG
struct SusiView_Previews: PreviewProvider {
    static var previews: some View {
        SusiView()
        .environmentObject(AppState())
    }
}
#endif
