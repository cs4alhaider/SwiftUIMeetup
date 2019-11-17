//
//  Button+Example.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

struct Button_Example: View {
    @State private var number = 0
    
    var body: some View {
        VStack(spacing: 50) {
            Text("\(number)")
                .font(.system(size: 100))
            
            Button(action: apppendNumber) {
                Text("+")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .padding(50)
                    .background(Color.red)
                    .clipShape(Circle())
            }
        }
    }
    
    func apppendNumber() {
        number += 1
    }
}

struct Button_Example_Previews: PreviewProvider {
    static var previews: some View {
        Button_Example()
    }
}


