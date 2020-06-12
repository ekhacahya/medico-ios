//
//  DoctorClinicUIView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 13/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct DoctorClinicUIView: View {
    var specialist: Specialist
    @State var showFilter: Bool = false
    @Environment(\.presentationMode) var presentation
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack{
                ZStack(alignment: .top){
                    Rectangle()
                        .foregroundColor(Color.init("cornflower"))
                        .frame( height: 120, alignment: .center)
                        .cornerRadius(24, corners: [.bottomLeft, .bottomRight])
                    HStack{
                        Button( action: {
                            self.presentation.wrappedValue.dismiss()
                        }) {
                            HStack{
                                Image(systemName: "arrow.left")
                            }.padding()
                                .cornerRadius(25, antialiased: false)
                                .shadow(radius: 2)
                        }
                        Text(specialist.name)
                            .modifier(TextStyle7())
                        Spacer()
                    }
                    .padding(.top, 56)
                    .foregroundColor(.white)
                    
                    
                }
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 12){
                        QuickFilterRowView(filter: Filter(id: 1, name: "Availability"))
                        QuickFilterRowView(filter: Filter(id: 1, name: "In Hospital"))
                        QuickFilterRowView(filter: Filter(id: 1, name: "Online Booking"))
                    }
                    .padding(.bottom, 16)
                }
                .padding(.horizontal, 16)
                .offset(y: -28)
                
                ScrollView{
                    VStack{
                        ForEach(cityData){ city in
                            DoctorClinicRowView()
                        }
                    }.padding()
                }
                .offset(y: -38)
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            
            Button( action: {
                self.showFilter.toggle()
            }) {
                Image("filter")
                    .renderingMode(.original)
                    .padding()
            }
                .background(Blurview())
                .clipShape(Circle())
                .shadow(radius: 2)
                .padding()
                .sheet(isPresented: $showFilter) {
                    FilterUIView()
            }
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .edgesIgnoringSafeArea(.top)
            .navigationBarTitle("")
            .navigationBarHidden(true)
    }
}

struct DoctorClinicUIView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorClinicUIView(specialist: specialist[0])
    }
}
