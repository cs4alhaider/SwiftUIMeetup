//
//  UIViewControllerRepresentable+Example.swift
//  SwiftUIMeetup
//
//  Created by Abdullah Alhaider on 17/11/2019.
//  Copyright © 2019 Abdullah Alhaider. All rights reserved.
//

import SwiftUI

class ViewController: UIViewController {
    let lable = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        lable.text = "Hello World!"
        lable.bounds = view.bounds
        lable.center = view.center
        lable.textAlignment = .center
        view.addSubview(lable)
    }
}

struct Container<T: UIViewController>: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> T { T() }
    func updateUIViewController(_ uiViewController: T, context: Context) { }
}

struct UIViewControllerRepresentable_Example: View {
    var body: some View {
        Container<ViewController>()
    }
}

struct UIViewControllerRepresentable_Example_Previews: PreviewProvider {
    static var previews: some View {
        UIViewControllerRepresentable_Example()
    }
}
