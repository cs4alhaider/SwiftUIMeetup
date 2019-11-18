//
//  Form+Example.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

struct Form_Example: View {
    @State private var name = ""
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Enter your name")
                    TextField("Your name", text: $name)
                }
                
                Section(header: Text("Test")) {
                    Button("Submit") {
                        // your logic here
                    }
                }
            }
            .navigationBarTitle("Form")
        }
    }
}

struct Form_Example_Previews: PreviewProvider {
    static var previews: some View {
        Form_Example()
    }
}
