//
//  SplashUIView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 06/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI
//import CustomColor

struct SplashUIView: View {
    @State var cityQuery: String = ""
    @State var isModal: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                ZStack(alignment: .leading){
                    Rectangle()
                        .frame(height: 143.0)
                        .foregroundColor(Color("cornflower"))
                    
                    HStack(alignment: .center){
                        Image(systemName: "xmark")
                            .modifier(TextStyle7())
                        Text("Select your city")
                            .modifier(TextStyle7())
                            .padding(.horizontal)
                    }
                    .padding(.horizontal, 18.0)
                    .foregroundColor(.white)
                }
                .background(Color.blue)
                .cornerRadius(24, corners: [.bottomLeft, .bottomRight])
                
                ZStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(24.0)
                            .shadow(radius: 12)
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .padding(.leading)
                            TextField("Search here", text: self.$cityQuery)
                                .modifier(TextStyle24())
                                .padding(.horizontal)
                        }
                    }
                    .padding(.horizontal, 16.3)
                    .frame(height: 46.9)
                    .offset(y: -33.45)
                }
                
                
                VStack(spacing: 30) {
                    Button(action: {
                        self.isModal = true
                    }) {
                        Image(systemName: "location.circle")
                            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            .padding(10)
                            .background(Color.white)
                            .cornerRadius(17)
                            .shadow(radius: 3)
                        Text("Use current location")
                            .modifier(TextStyle4())
                        Spacer()
                    }
                    .padding(.horizontal, 18.8)
                    .frame(alignment: .leading)
                    .sheet(isPresented: $isModal, content: {
                        LoginUIView()
                    })
                        .buttonStyle(BorderlessButtonStyle())
                    
                    
                    ScrollView(.vertical, showsIndicators: false){
                        VStack {
                            ForEach(cityData) { city in
                                CityRowView(city: city)
                                 Divider()
                                    .padding(.horizontal, 28)
                            }
                        }
                        .padding(.top, 16)
                    }
                    .background(Color.white)
                    .cornerRadius(24, corners: [.topLeft, .topRight])
                }
            }
            .background(Color.init("whiteBg"))
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct SplashUIView_Previews: PreviewProvider {
    static var previews: some View {
        SplashUIView()
    }
}
