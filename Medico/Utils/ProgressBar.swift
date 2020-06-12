//
//  ProgressBar.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 18/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var value: CGFloat
    
    var width: CGFloat
    var height: CGFloat
    var progressColor: Color?
    var staticColor: Color?
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack(alignment: .leading){
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(self.staticColor ?? .gray)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                RoundedRectangle(cornerRadius: 20)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 6)
                    .foregroundColor(self.progressColor ?? .blue)
                    .frame(width: self.value*geometry.size.width, height: geometry.size.height)
                    
            }
        }
        .frame(width: width, height: height)
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(value: .constant(0.2), width: 300, height: 20, progressColor: .blue, staticColor: .gray)
    }
}
