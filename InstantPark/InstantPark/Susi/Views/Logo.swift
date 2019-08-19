//
//  Logo.swift
//  InstantPark
//
//  Created by Yini Yin on 17/08/19.
//  Copyright © 2019 Yini Yin. All rights reserved.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        Image("IP")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
#endif
