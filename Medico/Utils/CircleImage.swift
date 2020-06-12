//
//  CircleImage.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 11/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .renderingMode(.original)
        .clipShape(Circle())
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: "44")
    }
}
