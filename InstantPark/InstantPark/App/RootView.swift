//
//  ContentView.swift
//  InstantPark
//
//  Created by Yini Yin on 18/08/19.
//  Copyright © 2019 Yini Yin. All rights reserved.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var appState: AppState

   var body: some View {
        VStack(alignment: .center) {
            Logo()
                .padding(.top, 50)
                .padding(.bottom, 50)
            
            if self.appState.susiState.showSUSI {
                SusiView()
            }
            
            if self.appState.susiState.showSU {
                SuView()
            }
            
            if self.appState.susiState.showSI {
                SiView()
            }
            Spacer()
        }
    }
}

#if DEBUG
struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
        .environmentObject(AppState())
    }
}
#endif
