//
//  MenuRowView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 10/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct MenuRowView: View {
    var menu : Menu
    
    var body: some View {
        NavigationLink(destination: ClinicCategoryUIView()) {
            VStack{
                Image(menu.imageName)
                    .renderingMode(.original)
                    .frame(width: 75, height: 75, alignment: .center)
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color.init("black16"), radius: 11, x: 0, y: 11)
                
                Text(menu.title)
                    .modifier(TextStyle11())
                Text(menu.subTitle)
                    .lineLimit(2)
                    .modifier(MenuSubtitle())
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 88, alignment: .leading)
            }
            .frame(width: 88, alignment: .center)
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(menu: menuData[2])
    }
}
