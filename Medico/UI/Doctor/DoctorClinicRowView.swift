//
//  DoctorClinicRowView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 13/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct DoctorClinicRowView: View {
    var body: some View {
        NavigationLink(destination: DetailClinicUIView()) {
            VStack {
                HStack(alignment: .top){
                    VStack(alignment: .center){
                        CircleImage(imageName: "44")
                            .frame(width: 61, height: 61, alignment: .center)
                        Text("356 votes")
                            .modifier(TextStyle17())
                        Text("80 Feedback")
                            .modifier(TextStyle28())
                    }
                    .frame(width: 75, alignment: .center)
                    .padding(.horizontal, 16)
                    
                    VStack(alignment: .leading){
                        Text("Lica Anera")
                            .modifier(TextStyle18())
                            .padding(.bottom, 8)
                        VStack(alignment: .leading){
                            Text("MBBS,DOMS,MS - Ophthalmology")
                            Text("Ophthalmologist")
                            Text("26 years of experience")
                        }
                        .padding(.horizontal, 12)
                        .padding(.vertical, 4)
                        .modifier(TextStyle17())
                        .overlay(RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.init("veryLightPink"), lineWidth: 1))
                        HStack{
                            Image("doctor")
                                .renderingMode(.original)
                            Text("1 Doctor")
                                .modifier(TextStyle17())
                            Spacer()
                            Image("placeholder")
                                .renderingMode(.original)
                            Text("Andheri East")
                                .modifier(TextStyle17())
                            Spacer()
                        }
                        Text("$ 500 onwards")
                            .modifier(TextStyle20())
                    }
                    Spacer()
                }
                HStack{
                    Text("LASIK Eye Sur…")
                        .modifier(TextStyle17())
                        .lineLimit(1)
                        .padding(.vertical, 4)
                        .padding(.horizontal, 14)
                        .overlay(RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.init("veryLightPink"), lineWidth: 1))
                        .frame(maxWidth: 110, alignment: .center)
                    Text("Anterior SeSeSeSe")
                        .modifier(TextStyle17())
                        .lineLimit(1)
                        .padding(.vertical, 4)
                        .padding(.horizontal, 14)
                        .overlay(RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.init("veryLightPink"), lineWidth: 1))
                        .frame(maxWidth: 110, alignment: .center)
                    Text("+2 More")
                        .modifier(TextStyle17())
                        .padding(.vertical, 4)
                        .padding(.horizontal, 14)
                        .overlay(RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.init("veryLightPink"), lineWidth: 1))
                        .frame(maxWidth: 110, alignment: .center)
                }
                .padding(.vertical, 16)
                HStack{
                    Spacer()
                    NavigationLink(destination: LoginUIView()) {
                        Text("Contact Clinic")
                            .modifier(TextStyle19())
                            .padding(.vertical, 9)
                            .padding(.horizontal, 25)
                            .overlay(RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.init("lightishBlue"), lineWidth: 1))
                    }
                }
                    
                .padding(.horizontal, 16)
            }
            .padding(.vertical, 24)
            .background(Color.white)
            .overlay(RoundedRectangle(cornerRadius: 12)
            .stroke(Color.init("veryLightPink"), lineWidth: 1))
        }
    }
}

struct DoctorClinicRowView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorClinicRowView()
    }
}
