//
//  CustomButton.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 29/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct LoginButton: View {
    var title: String = "Facebook"
    var colorName: String = "bluish"
    var body: some View {
        Button( action: {
            
        }) {
            HStack{
                Spacer()
                Text(title)
                    .foregroundColor(Color.init(colorName))
                    .modifier(TextStyle3())
                    
                Spacer()
            }.padding()
                .background(Color.white)
                .cornerRadius(25, antialiased: false)
                .shadow(radius: 5, x: 0, y: 2)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton()
    }
}
