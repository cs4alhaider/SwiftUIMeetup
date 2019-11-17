//
//  StackFamily+Example.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

struct StackFamily_Example: View {
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Hi!")
                
                HStack {
                    Image(systemName: "star.fill")
                    
                    Text("Abdullah")
                    
                    VStack {
                        Image(systemName: "person.icloud")
                        Image(systemName: "person.icloud.fill")
                    }
                    .background(Color.green)
                }
                .background(Color.red)
            }
            .background(Color.blue)
            .scaleEffect(3)
        }
    }
}

struct StackFamily_Example_Previews: PreviewProvider {
    static var previews: some View {
        StackFamily_Example()
    }
}
