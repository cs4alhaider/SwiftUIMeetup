//
//  DataBinding+Example.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
}

struct DataBinding_Example: View {
    
    @ObservedObject var user = User()
    
    var body: some View {
        VStack {
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding(.vertical, 20)
    }
}

struct DataBinding_Example_Previews: PreviewProvider {
    static var previews: some View {
        DataBinding_Example()
    }
}
