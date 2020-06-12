//
//  ClinicCategoryUIView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 11/06/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct ClinicCategoryUIView: View {
    @State var cityQuery: String = ""
    @Environment(\.presentationMode) var presentation
    var body: some View {
        VStack{
            ZStack(alignment: .top){
                Rectangle()
                    .foregroundColor(Color.init("cornflower"))
                    .frame( height: 143, alignment: .center)
                    .cornerRadius(24, corners: [.bottomLeft, .bottomRight])
                HStack{
                    Button( action: {
                        self.presentation.wrappedValue.dismiss()
                    }) {
                        HStack{
                            Image(systemName: "xmark")
                                
                        }.padding()
                            .cornerRadius(25, antialiased: false)
                            .shadow(radius: 2)
                    }
                    Text("Find & Book")
                        .modifier(TextStyle7())
                    Spacer()
                }
                .padding(.top, 56)
                .foregroundColor(.white)
                
            }

            ZStack{
                Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(24.0)
                    .shadow(radius: 12)
                HStack{
                    Image(systemName: "magnifyingglass")
                        .padding(.leading)
                    TextField("Doctors, specialities, clinics", text: self.$cityQuery)
                        .modifier(TextStyle24())
                        .padding(.horizontal)
                }
            }
            .padding(.horizontal, 16.3)
            .frame(height: 46.9)
            .offset(y: -33.45)
            
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    ForEach(specialist) { city in
                        ItemRowView(data: city)
                    }
                }
                .padding(.top, 16)
            }
            .background(Color.white)
            .cornerRadius(24, corners: [.topLeft, .topRight])
            
        }
        .background(Color.init("whiteBg"))
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        .edgesIgnoringSafeArea(.top)
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct ClinicCategoryUIView_Previews: PreviewProvider {
    static var previews: some View {
        ClinicCategoryUIView()
    }
}
