//
//  UIViewRepresentable+Example.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

struct TextView: UIViewRepresentable {
    @Binding var text: String
    
    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.textColor = .systemBlue
        view.font = .systemFont(ofSize: 30)
        view.backgroundColor = UIColor.gray.withAlphaComponent(0.3)
        return view
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
}

struct UIViewRepresentable_Example: View {
    @State private var myText = ""
    
    var body: some View {
        TextView(text: $myText)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(50)
    }
}

struct UIViewRepresentable_Example_Previews: PreviewProvider {
    static var previews: some View {
        UIViewRepresentable_Example()
    }
}
