//
//  RefferalRowView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 13/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct RefferalRowView: View {
    @State var cityQuery: String = ""
    var body: some View {
        VStack {
            Image("referalImg")
                .padding(16)
            Divider()
            HStack {
                Text("Share the Given code")
                    .modifier(TextStyle27())
                    .frame(width: 74)
                HStack{
                    Text("NHDFG")
                        .modifier(TextStyle27())
                    Spacer()
                    Image("share")
                }
                .padding(16)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.init("veryLightPink")))
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 8)
        }
        .background(Color.white)
        .overlay(RoundedRectangle(cornerRadius: 12)
        .stroke(Color.init("veryLightPink"), lineWidth: 1))
        
    }
}

struct RefferalRowView_Previews: PreviewProvider {
    static var previews: some View {
        RefferalRowView()
    }
}
