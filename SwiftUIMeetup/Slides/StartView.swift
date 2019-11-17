//
//  StartView.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

struct StartView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 30) {
                Image("swiftui")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .shadow(color: Color.white.opacity(0.2), radius: 10)
                    .padding(.top, 50)
                Text("SwiftUI")
                    .font(.system(size: 55, weight: .black, design: .monospaced))
                Text("Build apps in a declarative way natively on all Apple platforms.")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 35, weight: .regular, design: .monospaced))
            }
            VStack {
                Image("code")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: Color.white.opacity(0.2), radius: 10)
                HStack(spacing: 100) {
                    Card(title: "Abdullah Alhaider",
                         url: "@cs4alhaider")
                    Card(title: "Ibrahim AshShohail",
                         url: "@IbraSho")
                }
            }
        }
    }
}

private struct Card: View {
    let title: String
    let url: String
    
    var body: some View {
        VStack(alignment: .center) {
            Text(title)
                .font(.system(size: 25, weight: .semibold, design: .default))
                .multilineTextAlignment(.center)
            Text(url)
                .font(.system(size: 22, design: .monospaced))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.blue)
        }
        .padding(.bottom, 70)
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
