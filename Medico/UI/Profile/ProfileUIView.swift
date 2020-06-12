//
//  ProfileUIView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 18/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct ProfileUIView: View {
    @State var progressValue: Float = 60.0
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                ZStack(alignment: .top){
                    HStack{
                        NavigationLink(destination: DoctorUIView()){
                            Image("user").renderingMode(.original)
                                .padding()
                        }
                        Spacer()
                        NavigationLink(destination: DoctorUIView()){
                            Image("gear").renderingMode(.original)
                                .padding()
                        }
                    }
                    VStack{
                        CircleImage(imageName: "44")
                            .frame(width: 80, height: 80, alignment: .center)
                            .scaledToFit()
                        
                        Text("Jitendra Raut")
                            .modifier(TextStyle7())
                        
                        Text("+91 97306270877")
                            .modifier(TextStyle31())
                        
                        ProgressBar(value: .constant(0.2), width: 264, height: 11, progressColor: .white, staticColor: Color("black").opacity(0.11))
                        
                        NavigationLink(destination: DoctorUIView()){
                            Text("Complete your profile")
                                .modifier(TextStyle30())
                                .padding(.vertical, 8)
                                .padding(.horizontal, 27)
                                .overlay(RoundedRectangle(cornerRadius: 17)
                                    .stroke(Color.init("white32"), lineWidth: 1))
                            
                        }
                        
                    }
                    .padding()
                    
                }
                .background(Color.init("cornflower"))
                .cornerRadius(20)
                
                VStack(spacing: 0){
                    ForEach(profileMenus){ menu in
                        ProfileMenuRowView(menu: menu)
                        if(menu != profileMenus.last){
                            Divider()
                        }
                    }
                }
                .background(Color.white)
                .cornerRadius(20)
                .padding(.top, 20)
            }
        }.padding()
            .background(Color.init("whiteBg"))
            .navigationBarTitle("")
            .navigationBarHidden(true)
    }
}

struct ProfileUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileUIView()
    }
}
