//
//  Test.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

struct Test: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
