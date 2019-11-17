//
//  SlideRowView.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

struct SlideRowView: View {
    let text: String
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: 18, weight: .semibold, design: .monospaced))
            .padding(.vertical, 20)
    }
}

struct SlideRowView_Previews: PreviewProvider {
    static var previews: some View {
        SlideRowView("Text")
    }
}
