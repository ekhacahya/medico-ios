//
//  DoctorRowView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 10/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct DoctorRowView: View {
    var body: some View {
        NavigationLink(destination: DoctorUIView()){
            ZStack(alignment: .top) {
                VStack(alignment: .leading){
                    Text("Dr. Alina James")
                        .modifier(TextStyle14())
                    Text("B.Sc, MBBS, DDVL MD-Dermitologist")
                        .modifier(TextStyle15())
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 7)
                    
                    HStack{
                        Image(systemName: "star.fill")
                            .renderingMode(.original)
                        Text(" 4.5")
                            .modifier(TextStyle17())
                    }.padding(.top, 10)
                }
                .padding(.top, 28)
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                
                
                CircleImage(imageName: "44")
                    .frame(width: 56, height: 56, alignment: .top)
                    .offset(y: -28)
            }
            .padding(.top, 28)
            .padding(.bottom, 24)
            .frame(width: 156)
            .shadow(color: Color.init("black16"), radius: 9, x: 0, y: 9)
        }
    }
}

struct DoctorRowView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorRowView()
    }
}
