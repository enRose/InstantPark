//
//  ContentView.swift
//  InstantPark
//
//  Created by Yini Yin on 17/08/19.
//  Copyright © 2019 Yini Yin. All rights reserved.
//

import SwiftUI

struct SusiView: View {
    @EnvironmentObject var routerData: RouterData
    
    var eventReducer: SusiEventReducer = SusiEventReducer()
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Find an instant car park")
                 .font(.title)
              
             Text("at your pace, your rate")
            
             Button(action: {
                self.eventReducer.dispatch(
                    e: SusiEvent.SU,
                    data: self.routerData
                    )
             }) {
                 Text("Create an account")
             }
             .padding(.bottom)
             .shadow(radius: 10)
            
            HStack {
                Text("Have an account already?")
                    .offset(y: 230)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Log in")
                }.offset(y: 230)
            }
        }
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SusiView()
        .environmentObject(RouterData())
    }
}
#endif
