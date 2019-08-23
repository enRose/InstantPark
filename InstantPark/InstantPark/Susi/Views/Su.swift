//
//  SU.swift
//  InstantPark
//
//  Created by Yini Yin on 18/08/19.
//  Copyright © 2019 Yini Yin. All rights reserved.
//

import SwiftUI

struct SuView: View {
    var body: some View {
        
        VStack {
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.trailing)
            
            Text("Hello Su!")
        }
    
    }
}

#if DEBUG
struct SuView_Previews: PreviewProvider {
    static var previews: some View {
        SuView()
    }
}
#endif
