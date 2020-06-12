//
//  RoundedCorner.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 11/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct RoundedCorner_Previews: PreviewProvider {
    static var previews: some View {
        RoundedCorner()
    }
}
