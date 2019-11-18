//
//  SlidesView.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

struct SlidesView: View {
    
    @ObservedObject var slides = Slides()
    var body: some View {
        NavigationView {
            Form {
                Section(header: HeaderView("Introduction")) {
                    
                    NavigationLink(destination: StartView()) {
                        SlideRowView("Welcome!")
                    }
                    
                    NavigationLink(destination: SlideTemplateView(slide: self.slides.swiftUI)) {
                        SlideRowView("SwiftUI")
                    }
                }
                
                Section(header: HeaderView("SwiftUI new APIs")) {
                    
                    NavigationLink(destination: SlideTemplateView(slide: self.slides.code)) {
                        // PreviewProvider
                        // some View
                        SlideRowView(self.slides.code.title)
                    }
                    
                    NavigationLink(destination: SlideTemplateView(slide: self.slides.state)) {
                        // @State: automatically watch for changes and update any parts of our views that use that state.
                        // @Binding: lets us declare that one value actually comes from elsewhere, and should be shared in both places
                        // @Published: to create observable objects that automatically announce when changes occur
                        // @ObservedObject: to manage state from external objects
                        // @EnvironmentObject: to share data between views
                        SlideRowView(self.slides.state.title)
                    }
                    
                    NavigationLink(destination: SlideTemplateView(slide: self.slides.dataBinding)) {
                        SlideRowView(self.slides.dataBinding.title)
                    }
                    
                    NavigationLink(destination: SlideTemplateView(slide: self.slides.codable)) {
                        SlideRowView(self.slides.codable.title)
                    }
                }
                
                Section(header: HeaderView("New ways to work with")) {
                    
                    NavigationLink(destination: SlideTemplateView(slide: self.slides.stackFamily)) {
                        // Order is important
                        SlideRowView(self.slides.stackFamily.title)
                    }
                    
                    NavigationLink(destination: SlideTemplateView(slide: self.slides.lists)) {
                        // Order is important
                        SlideRowView(self.slides.lists.title)
                    }
                    
                    NavigationLink(destination: SlideTemplateView(slide: self.slides.forms)) {
                        // Order is important
                        SlideRowView(self.slides.forms.title)
                    }
                    
                    NavigationLink(destination: SlideTemplateView(slide: self.slides.buttons)) {
                        // Order is important
                        SlideRowView(self.slides.buttons.title)
                    }
                    
                    NavigationLink(destination: SlideTemplateView(slide: self.slides.viewModifiers)) {
                        // Order is important
                        SlideRowView(self.slides.viewModifiers.title)
                    }
                    
                }
                
                Section(header: HeaderView("UIKit")) {
                    NavigationLink(destination: SlideTemplateView(slide: self.slides.uiviewControllerRepresentable)) {
                        // Order is important
                        SlideRowView(self.slides.uiviewControllerRepresentable.title)
                    }
                    
                    NavigationLink(destination: SlideTemplateView(slide: self.slides.uiViewRepresentable)) {
                        // Order is important
                        SlideRowView(self.slides.uiViewRepresentable.title)
                    }
                }
                
                Section(header: HeaderView("Tools")) {
                    NavigationLink(destination: Text("In Code..")) {
                        SlideRowView("Using SwiftUI canvs with UIKit classes")
                    }
                }
                
                Section(header: HeaderView("Last step")) {
                    NavigationLink(destination: Text("Live coding...")) {
                        SlideRowView("Fetching data from rest api")
                    }
                }
                
                Section(header: HeaderView("Get in touch..")) {
                    NavigationLink(destination: QRView()) {
                        // Order is important
                        SlideRowView(self.slides.getInTouch.title)
                    }
                }
            }
            .navigationBarTitle("SwiftUI")
        }
    }
}

struct SlidesView_Previews: PreviewProvider {
    static var previews: some View {
        SlidesView()
    }
}


struct QRView: View {
    var body: some View {
        VStack {
            Text("Scan me ..")
                .font(.system(size: 50, weight: .bold, design: .monospaced))
                .padding(.top, 30)
            Image("QR")
                .resizable()
                .scaledToFit()
                .padding(50)
        }
    }
}
