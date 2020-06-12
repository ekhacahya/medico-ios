//
//  Blur.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 14/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI
struct Blur: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemMaterial
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

let styles : [(description: String, style: UIBlurEffect.Style)] = [
    (description: "ultra thin", style: .systemUltraThinMaterial),
    (description: "thin", style: .systemThinMaterial),
    (description: "normal", style: .systemMaterial),
    (description: "thick", style: .systemThickMaterial),
    (description: "chrome", style: .systemChromeMaterial)
]
