//
//  Slide.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import Foundation
import UIKit

struct Slide {
    let title: String
    let subtitle: String
    let imagesNames: [String]
    let useImagesHeightMultiplier: Bool
    let imagesHeightMultiplier: CGFloat
    
    init(_ title: String,
         subtitle: String,
         imagesNames: [String],
         useImagesHeightMultiplier: Bool = false,
         imagesHeightMultiplier: CGFloat = 0.55) {
        self.title = title
        self.subtitle = subtitle
        self.imagesNames = imagesNames
        self.useImagesHeightMultiplier = useImagesHeightMultiplier
        self.imagesHeightMultiplier = imagesHeightMultiplier
    }
}
