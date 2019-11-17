//
//  List_Example.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

struct List_Example: View {
    
    let topics = ["Sevlte",
                          "SwiftUI",
                          "Ionic",
                          "Domain Name System (DNS, DoH, DoT)",
                          "Regular Expressions (Regex)",
                          "Asynchronous Programming",
                          "Recommender Systems"]
    
    var body: some View {
        NavigationView {
            List(topics, id: \.self) {
                Text($0)
            }
            .navigationBarTitle("Topics")
        }
    }
}

struct List_Example_Previews: PreviewProvider {
    static var previews: some View {
        List_Example()
    }
}



