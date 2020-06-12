//
//  DoctorUIView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 11/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI
import MapKit

struct DoctorUIView: View {
    
    var body: some View {
        VStack{
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .foregroundColor(Color.init("cornflower"))
                    .frame( height: 275, alignment: .center)
                    .cornerRadius(24, corners: [.bottomLeft, .bottomRight])
                HStack{
                    Button( action: {
                        
                    }) {
                        HStack{
                            Image(systemName: "arrow.left")
                        }.padding()
                            .cornerRadius(25, antialiased: false)
                            .shadow(radius: 2)
                    }
                    Spacer()
                }
                .padding(.top, 56)
                .foregroundColor(.white)
                
                ScrollView {
                    VStack {
                        ZStack(alignment: .bottom){
                            
                            Color("white")
                                .cornerRadius(20)
                                .frame(height: 265)
                            
                            VStack{
                                HStack{
                                    Text("Prime")
                                        .foregroundColor(Color.init("jadeGreen"))
                                        .font(Font.custom(FontNameManager.Poppins.semiBold, size: 12))
                                        .padding(.top, 16)
                                    Spacer()
                                    Image("wtdoctor")
                                        .renderingMode(.original)
                                        .frame(width: 84, height: 84)
                                        .clipShape(Circle())
                                        .overlay(
                                            Circle()
                                                .stroke(Color("white"), lineWidth: 4)
                                    )
                                    
                                    Spacer()
                                    Text("* 4.2")
                                        .modifier(TextStyle29())
                                        .padding(.top, 16)
                                }
                                
                                Text("Dr. Jitendra Raut")
                                    .foregroundColor(Color.init("dark"))
                                    .font(Font.custom(FontNameManager.Poppins.semiBold, size: 14))
                                    .padding(.top, 16)
                                Text("B.Sc, MBBS, DDVL, MD- Dermitologist")
                                    .modifier(TextStyle29())
                                    .padding(.top, 4)
                                HStack{
                                    Text("16 yrs. Experience")
                                    Spacer()
                                    Text("89% (4384 votes)")
                                }
                                .modifier(TextStyle17())
                                .padding(.top, 19)
                                HStack(alignment: .center, spacing: 12){
                                    ImageHistory()
                                    ImageHistory()
                                    ImageHistory()
                                    ImageHistory()
                                }
                                
                                //                            Detail()
                            }
                            .padding(24)
                            .padding(.top, 80)
                                //                    .background(Color.white)
                                .cornerRadius(20)
                            
                            
                        }
                        .padding()
                        .frame(height: 386)
                        Detail()
                            .padding(.horizontal)
                    }
                }
            }
            ZStack(alignment: .leading){
                Button(action: {
                    print("Give Feedback")
                }){
                    HStack{
                        Text("Give Feedback")
                            .foregroundColor(Color("dark"))
                            
                            .frame(width: (UIScreen.main.bounds.width - 32) / 2)
                        Spacer()
                    }
                }.frame(width: (UIScreen.main.bounds.width - 32))
                    .padding(.vertical, 16)
                    .background(Color.white)
                    .cornerRadius(24)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(Color("veryLightPink"), lineWidth: 1)
                )
                
                HStack{
                    Spacer()
                    Button(action: {
                        print("Book")
                    }){
                        Text("Book")
                            .foregroundColor(.white)
                            
                            .frame(width: (UIScreen.main.bounds.width - 32) / 2)
                    }.frame(width: (UIScreen.main.bounds.width - 32) / 2)
                        .padding(.vertical, 16)
                        .background(Color("cornflower"))
                        .cornerRadius(24)
                }
                
            }.padding(.horizontal, 16)
        }
        .background(Color.init("whiteBg"))
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        .edgesIgnoringSafeArea(.top)
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct DoctorUIView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorUIView()
    }
}

struct ImageHistory : View {
    var body : some View{
        Image("clinic_dummy")
            .renderingMode(.original)
            .frame(width: 62, height: 62)
            .cornerRadius(10)
        
    }
    
}

struct DetailMapView : View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "map")
                    .modifier(TextStyle17())
                Text("92/6, 3rd Floor, Outer Ring Road, Chandra Layout")
                    .modifier(TextStyle17())
                Spacer()
            }
            .padding(.top, 14)
            .padding(.bottom, 11)
            MapView()
                .frame(height: 109)
            Divider()
                .padding(.vertical, 16)
        }
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct Detail : View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("In Clinic Fees :")
                    .modifier(TextStyle29())
                Text(" $10")
                    .modifier(TextStyle9())
                Spacer()
                Button(action: {
                    print("Book")
                }){
                    Text("Book")
                        .foregroundColor(Color.init("cornflower"))
                        .font(Font.custom(FontNameManager.Poppins.semiBold, size: 10))
                        .padding(.horizontal, 34)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .stroke(Color("lightishBlue"), lineWidth: 1)
                    )
                }
            }
            Divider()
            OpenDateView()
            DetailMapView()
            SubDetail(title: "FEEDBACK", subtitle: "Very good . courteous and efficient staff.")
            SubDetail(title: "SERVICES", subtitle: "Ophthalmology \nOphthalmology")
            SubDetail(title: "SPECIALIZATION", subtitle: "Dermitologist \nDermitologist")
            SubDetail(title: "VERIFICATION DONE FOR", subtitle: "- Medical License")
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct OpenDateView : View {
    var body: some View{
        VStack {
            HStack{
                Text("CLOSED TODAY")
                    .foregroundColor(Color.init("coral"))
                    .font(Font.custom(FontNameManager.Poppins.regular, size: 10))
                Spacer()
                Text("9:30AM - 08:00PM")
                    .modifier(TextStyle22())
                Spacer()
                Text("All Timing")
                    .foregroundColor(Color.init("cornflower"))
                    .font(Font.custom(FontNameManager.Poppins.medium, size: 12))
            }
            .padding(.vertical, 8)
            Divider()
        }
        
    }
}

struct SubDetail : View {
    var title : String = ""
    var subtitle : String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .modifier(TextStyle29())
            Text(subtitle)
                .modifier(TextStyle9())
                .padding(.top, 11)
            Divider()
        }
    }
}
