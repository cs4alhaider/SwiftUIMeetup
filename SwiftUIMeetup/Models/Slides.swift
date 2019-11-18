//
//  Slides.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import Foundation

class Slides: ObservableObject {
    
    // MARK: SwiftUI
    @Published var swiftUI: Slide = .init("SwiftUI", subtitle: """
• You can use SwiftUI for all Apple platforms.
• SwiftUI is a user interface framework that lets us design apps in a declarative.
• SwiftUI lets you ignore Interface Builder.
• You can preview a SwiftUI view side-by-side with its code.
• SwiftUI doesn’t replace UIKit.
• Limited API coverage till now (UITextView, UICollectionView) not yet here.
• SwiftUI use CoreAnimations for its rendering by defaults.
""", imagesNames: ["wwdc"], imagesHeightMultiplier: 0.4)
    
    // MARK: SwiftUI Code structure
    @Published var code: Slide = .init("SwiftUI Code structure", subtitle: """
• `View` protocol.
• `some View` opaque result type.
• `PreviewProvider` protocol.
""", imagesNames: ["someView"])
    
    // MARK: State and Data Flow
    @Published var state: Slide = .init("State and Data Flow", subtitle: """
SwiftUI manages the storage of any property you declare as a state.

`@State` is a new property wrapper made especially for SwiftUI.

When the state value changes, the view invalidates its appearance andrecomputes the body.
Use the state as the single source of truth for a given view.

A State instance isn’t the value itself; it’s a means of reading and mutating the value. To access a state’s underlying value, use its value property.
""", imagesNames: ["state"])
    
    // MARK: dataBinding
    @Published var dataBinding: Slide = .init("Data binding", subtitle: """

""", imagesNames: ["Published", "ObservedObject", "bindingExCode"], imagesHeightMultiplier: 1)
    
    // MARK: Using Codable with ObservableObject
    @Published var codable: Slide = .init("Using Codable with ObservableObject", subtitle: """

""", imagesNames: ["codable1", "codable2"], imagesHeightMultiplier: 0.9)
    
    
    // MARK: Stack family
    @Published var stackFamily: Slide = .init("Stack family", subtitle: """

""", imagesNames: ["StackFamily"], imagesHeightMultiplier: 0.9)
    
    // MARK: Working with List
    @Published var lists: Slide = .init("List", subtitle: """

""", imagesNames: ["ListExample"], imagesHeightMultiplier: 0.9)
    
    // MARK: Working with Form
    @Published var forms: Slide = .init("Form", subtitle: """

""", imagesNames: ["FormExample"], imagesHeightMultiplier: 0.9)
    
    
    // MARK: Working with Button
    @Published var buttons: Slide = .init("Button", subtitle: """

""", imagesNames: ["Button_Example"], imagesHeightMultiplier: 0.9)
    
    // MARK: Working with ViewModifier
    @Published var viewModifiers: Slide = .init("ViewModifier", subtitle: """

""", imagesNames: ["ViewModifier"], imagesHeightMultiplier: 0.9)
    
    
    // MARK: Working with Button
    @Published var uiviewControllerRepresentable: Slide = .init("UIViewControllerRepresentable", subtitle: """
• `UIViewControllerRepresentable`
""", imagesNames: ["UIViewControllerRepresentable"], imagesHeightMultiplier: 0.9)
    
    // MARK: Working with Button
    @Published var uiViewRepresentable : Slide = .init("UIViewRepresentable", subtitle: """
    • `UIViewRepresentable`
""", imagesNames: ["UIViewRepresentable"], imagesHeightMultiplier: 0.9)
    
    
    // MARK: Working with Button
    @Published var getInTouch : Slide = .init("Get in touch", subtitle: """
        Scan me 😄
""", imagesNames: ["QR"], imagesHeightMultiplier: 0.9)
}
