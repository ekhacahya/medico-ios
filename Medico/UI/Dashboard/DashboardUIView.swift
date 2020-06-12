//
//  DashboardUIView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 10/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct DashboardUIView: View {
    
    var body: some View {
//        NavigationView {
            VStack {
                ZStack(alignment: .top){
                    Rectangle()
                        .foregroundColor(Color.init("cornflower"))
                        .frame( height: 143, alignment: .center)
                        .cornerRadius(24, corners: [.bottomLeft, .bottomRight])
                    HStack{
                        Text("Medico")
                            .modifier(TextStyle25())
                        Spacer()
                        Text("Yogyakarta")
                            .modifier(TextStyle26())
                    }
                    .padding(.horizontal, 26)
                    .padding(.top, 56)
                    .foregroundColor(.white)
                    
                    HStack(alignment: .top, spacing: 24)  {
                        ForEach(menuData) { menu in
                            MenuRowView(menu: menu)
                        }
                    }
                    .padding(.horizontal, 26)
                    .offset(y: 104)
                    .padding(.bottom, 104)
                }
                
                ScrollView{
                    VStack{
                        GeometryReader { geometry in
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack{
                                    ForEach(banners) { item in
                                        Image(item.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: geometry.size.width - 26, height: geometry.size.height)
                                            .clipped()
                                    }
                                }
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, height: 152, alignment: .center)
                        .padding(.vertical, 24)
                        
                        HStack{
                            Text("Doctors nearby you")
                                .modifier(TextStyle13())
                            Spacer()
                            Text("See All")
                                .modifier(TextStyle12())
                        }
                        .padding(.horizontal, 16)
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack {
                                ForEach(doctors) { doctor in
                                    DoctorRowView()
                                }
                            }
                            .padding(.leading, 16)
                        }
                        
                        RefferalRowView()
                            .padding(16)
                    }
                }
            }
            .background(Color.init("whiteBg"))
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .edgesIgnoringSafeArea(.top)
            .navigationBarTitle("", displayMode: .automatic)
            .navigationBarHidden(true)
        }
//    }
}

struct DashboardUIView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardUIView()
    }
}
