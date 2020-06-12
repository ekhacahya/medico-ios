//
//  FilterUIView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 14/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct FilterUIView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding()
                .cornerRadius(15.0)
        }
        .background(Blurview())
    }
}

struct Blurview : UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<Blurview>) -> UIVisualEffectView {
        
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialLight))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Blurview>) {
        
        
    }
}

struct FilterUIView_Previews: PreviewProvider {
    static var previews: some View {
        FilterUIView()
    }
}
