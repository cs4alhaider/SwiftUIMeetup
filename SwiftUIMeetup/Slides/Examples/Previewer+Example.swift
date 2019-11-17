//
//  Previewer+Example.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import  UIKit

class MyViewController: UIViewController {
    
    lazy private var lable: UILabel = {
        let lable = UILabel()
        lable.text = "Hello World!"
        lable.textAlignment = .center
        lable.textColor = .black
        lable.bounds = view.bounds
        lable.center = view.center
        lable.font = .systemFont(ofSize: 30)
        return lable
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(lable)
    }
}


// MARK: PreviewProvider
#if DEBUG
import SwiftUI

struct MyViewController_Previews: PreviewProvider {
    static var previews: some View {
        Container<MyViewController>()
            .edgesIgnoringSafeArea(.all)
            .environment(\.colorScheme, .light)
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
    struct Container<T: UIViewController>: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> T { T() }
        func updateUIViewController(_ uiViewController: T, context: Context) { }
    }
}
#endif
