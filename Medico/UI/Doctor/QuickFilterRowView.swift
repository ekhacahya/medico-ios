//
//  QuickFilterRowView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 15/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct QuickFilterRowView: View {
    var filter: Filter
    var body: some View {
        Button(action: {
            
        }) {
            Text(filter.name)
                .modifier(TextStyle22())
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(color: Color.init("black16"), radius: 4, y: 3)
        }
    }
}

struct QuickFilterRowView_Previews: PreviewProvider {
    static var previews: some View {
        QuickFilterRowView(filter: Filter(id: 1, name: "In Hospital"))
    }
}
