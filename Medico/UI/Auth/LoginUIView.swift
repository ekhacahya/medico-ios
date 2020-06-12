//
//  LoginUIView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 06/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct LoginUIView: View {
    @State var selection: Int? = nil
    
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Rectangle()
                        .frame(height: 337, alignment: .top)
                        .foregroundColor(Color("cornflower"))
                        .cornerRadius(34, corners: [.bottomLeft, .bottomRight])
                    Text("Medico")
                        .font(Font.custom(FontNameManager.Poppins.bold, size: 48))
                        .foregroundColor(.white)
                }
                
                VStack(spacing: 16){
                    LoginButton(title: "Phone Number", colorName: "twilight")
                    
                    LoginButton()
                    
                    LoginButton(title: "Google", colorName: "salmon")
                    
                    Text("By continuing, you agree to Terms & Conditions")
                        .modifier(TextStyle8())
                        .padding(.top, 27)
                }
                .padding()
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .navigationBarTitle("Login")
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
        }
    }
    func loginAnon() {
        UserDefaults.standard.set(true, forKey: Constanta.Keys.isLoggedIn)
        NotificationCenter.default.post(name: NSNotification.Name(Constanta.Keys.isLoggedIn), object: nil)
    }
}

struct LoginUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginUIView()
    }
}
