//
//  CityRowView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 06/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct CityRowView: View {
    var city : City
    var body: some View {
        HStack {
            Text(city.name)
                .modifier(TextStyle4())
            Spacer()
        }
        .padding(.horizontal, 28)
        .padding(.vertical, 13.5)
    }
}

struct CityRowView_Previews: PreviewProvider {
    static var previews: some View {
        CityRowView(city: cityData[2])
    }
}
