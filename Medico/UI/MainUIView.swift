//
//  MainUIView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 18/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct MainUIView: View {
    @State var detail = false
    var body: some View {
        Home(detail: self.$detail)
            .animation(.default)
        
    }
}

struct Home : View {
    
    @State var index = "ALL"
    @State var tab = 0
    //    @Binding var detailData : DashboardUIView
    @Binding var detail : Bool
    var bottom = UIApplication.shared.windows.first?.safeAreaInsets.bottom
    @ObservedObject var viewRouter = ViewRouter()
    
    var body: some View{
        
        NavigationView {
            ZStack{
                
                Color.black.opacity(0.06).edgesIgnoringSafeArea(.all)
                
                VStack{
                    if self.viewRouter.currentView == Constanta.Page.dashboard {
                        DashboardUIView()
                    } else if self.viewRouter.currentView == Constanta.Page.chat {
                        DashboardUIView()
                    }else if self.viewRouter.currentView == Constanta.Page.profile {
                        ProfileUIView()
                    }
                    HStack{
                        
                        Button(action: {
                            self.tab = 0
                            self.viewRouter.currentView = Constanta.Page.dashboard
                            
                        }) {
                            
                            VStack {
                                Image("monitor")
                                    .font(.title)
                                    .foregroundColor(self.tab == 0 ? .black : Color.black.opacity(0.25))
                                
                                Text("Chat")
//                                .modifier(self.tab == 0 ? TextStyle16() : TextStyle17())
                            }
                            
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                            self.tab = 1
                            self.viewRouter.currentView = Constanta.Page.chat
                            
                        }) {
                            
                            VStack {
                                Image("tick")
                                    .font(.title)
                                    .foregroundColor(self.tab == 1 ? .black : Color.black.opacity(0.25))
                                
                                Text("Chat")
//                                .modifier(self.tab == 1 ? TextStyle16() : TextStyle17())
                            }
                            
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            self.tab = 2
                            self.viewRouter.currentView = Constanta.Page.profile
                            
                        }) {
                            
                            VStack{
                                Image("account")
                                    .font(.title)
                                    .foregroundColor(self.tab == 2 ? .black : Color.black.opacity(0.25))
                                
                                Text("Chat")
//                                .modifier(self.tab == 2 ? TextStyle16() : TextStyle17())
                            }
                            
                        }
                    }
                    .padding(.horizontal, 30)
                    .padding(.top,25)
                        // for no safearea phones padding will be 15 at bottom...
                        .padding(.bottom, self.bottom! == 0 ? 15 : self.bottom! + 10)
                        .background(Color.white)
                        .clipShape(CShape())
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct CShape : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 45, height: 45))
        
        return Path(path.cgPath)
    }
}

struct MainUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainUIView()
    }
}
