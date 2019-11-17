//
//  Slide1Example.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

struct Example: View {
    
    @ObservedObject var user = User()
    
    var body: some View {
        Text(" ")
    }
}

struct Example_Previews: PreviewProvider {
    static var previews: some View {
        Example()
    }
}
