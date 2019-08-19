//
//  ContentView.swift
//  InstantPark
//
//  Created by Yini Yin on 18/08/19.
//  Copyright © 2019 Yini Yin. All rights reserved.
//

import SwiftUI

struct SusiContainer: View {
    @EnvironmentObject var routerData: RouterData
    
    var body: some View {
        VStack(alignment: .center) {
            Logo()
                .padding(.top, 50)
                .padding(.bottom, 50)
            
            if self.routerData.showSUSI {
                SusiView()
            }
            
            if self.routerData.showSI {
                Si()
            }
            
            if self.routerData.showSU {
                Su()
            }
            
            Spacer()
        }
    }
}

#if DEBUG
struct SusiContainer_Previews: PreviewProvider {
    static var previews: some View {
        SusiContainer()
        .environmentObject(RouterData())
    }
}
#endif
