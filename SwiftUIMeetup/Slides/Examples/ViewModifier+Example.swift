//
//  ViewModifier+Example.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

struct MyCustomText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.purple)
            .padding(25)
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct ViewModifier_Example: View {
    var body: some View {
        Text("Hello, World!")
            .modifier(MyCustomText())
    }
}

struct ViewModifier_Example_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifier_Example()
    }
}
