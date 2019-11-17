//
//  SlideTemplateView.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

struct SlideTemplateView: View {
    let slide: Slide
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack {
                    VStack(spacing: 80) {
                        Text(self.slide.title)
                            .font(.system(size: 75, weight: .bold))
                            .padding(.horizontal, 100)
                        
                        Text(self.slide.subtitle)
                            .font(.system(size: 45))
                            .padding(.horizontal, 100)
                        
                        VStack {
                            ForEach(self.slide.imagesNames, id: \.self) { image in
                                Image(image)
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(15)
                                    .frame(width: geo.size.width * 0.85)
                                    // .frame(maxHeight: geo.size.height * self.slide.imagesHeightMultiplier)
                                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 0)
                                    .padding(.horizontal, 10)
                                    .padding(.bottom, 50)
                            }
                        }
                        
                        Spacer()
                    }
                }
                .padding(.vertical, 100)
                .frame(width: geo.size.width)
            }
        }
        .navigationBarTitle(Text(self.slide.title), displayMode: .large)
    }
}

struct SlideTemplateView_Previews: PreviewProvider {
    static var previews: some View {
        SlideTemplateView(slide: Slide("SwiftUI", subtitle: "New in WWDC", imagesNames: ["swiftui"]))
    }
}
