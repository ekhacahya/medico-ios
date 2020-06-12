//
//  ItemRowView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 12/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct ItemRowView: View {
    var data : Specialist
    
    var body: some View {
        NavigationLink(destination: DoctorClinicUIView(specialist: data)){
            VStack {
                HStack {
                    Text(data.name)
                        .modifier(TextStyle6())
                    Spacer()
                }
                HStack {
                    Text(data.specialist)
                        .modifier(TextStyle17())
                    Spacer()
                }
                Divider()
            }
            .padding(8)
            .padding(.leading, 56)
        }
    }
}

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView(data: specialist[0])
    }
}
