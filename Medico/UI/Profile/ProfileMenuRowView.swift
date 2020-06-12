//
//  ProfileMenuRowView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 18/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct ProfileMenuRowView: View {
    var menu : ProfileMenu
    var body: some View {
        NavigationLink(destination: DetailClinicUIView()) {
            HStack {
                Image(menu.image)
                    .renderingMode(.original)
                    .frame(height: 24.5)
                Text(menu.name)
                    .modifier(TextStyle29())
                Spacer()
                Image(systemName: "chevron.right")
                    .renderingMode(.original)
                    .frame(height: 5.6)
            }
            .background(Color.white)
            .padding(.horizontal, 24)
            .padding(.vertical, 16)
        }.padding(0)
    }
}

struct ProfileMenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMenuRowView(menu: profileMenus[0])
    }
}
