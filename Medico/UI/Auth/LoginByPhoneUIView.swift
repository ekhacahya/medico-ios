//
//  LoginByPhoneUIView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 08/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct LoginByPhoneUIView: View {
    @Environment(\.presentationMode) var presentation
    @State var cityQuery: String = ""
    @State var selection: Int? = nil
    var body: some View {
        VStack{
            Button( action: {
                self.presentation.wrappedValue.dismiss()
                
            }) {
                HStack{
                    Image(systemName: "xmark")
                    Spacer()
                }.padding()
                    .cornerRadius(25, antialiased: false)
                    .shadow(radius: 2)
            }
            
            Image("verification")
                .padding(.top, 41)
            
            Text("Enter your mobile number we will send you the OTP to verify later")
                .modifier(TextStyle2())
                .padding(.vertical, 21)
            VStack{
                HStack(spacing: 12){
                    
                    TextField("966", value: self.$cityQuery, formatter: NumberFormatter())
                        .frame(width: 52, height: 46, alignment: .center)
                        .multilineTextAlignment(.center)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.init("veryLightPink")))
                        .keyboardType(.phonePad)
                    
                    TextField("Search here", text: self.$cityQuery)
                        .padding(.horizontal, 13)
                        .frame(height: 46)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.init("veryLightPink")))
                        .keyboardType(.phonePad)
                    
                }
                Spacer().frame(height: 22)
                NavigationLink(destination: DashboardUIView(), tag: 3, selection: $selection){
                    Button(action: {
                        self.selection = 3
                    }) {
                        HStack{
                            Spacer()
                            Text("Submit")
                            .modifier(TextStyle())
                            Spacer()
                        }.padding()
                            .foregroundColor(.white)
                            .background(Color.init("cornflower"))
                            .cornerRadius(25, antialiased: false)
                            .shadow(radius: 2)
                    }
                }
            }
            .padding(.vertical, 22)
            .padding(.horizontal, 18)
            .background(Color.white)
            .cornerRadius(12)
            .shadow(radius: 12)
        }
        .padding(24)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

extension UINavigationController : UIGestureRecognizerDelegate{
    override open func viewDidLoad() {
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return (viewControllers.count > 1)
    }
}

struct LoginByPhoneUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginByPhoneUIView()
    }
}
