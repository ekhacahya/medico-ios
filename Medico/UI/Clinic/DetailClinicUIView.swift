//
//  DetailClinicUIView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 15/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct DetailClinicUIView: View {
    @Environment(\.presentationMode) var presentation
    var body: some View {
        VStack {
            GeometryReader { g in
                ZStack(alignment: .top) {
                    Image("clinic_dummy")
                        .scaledToFit()
                        .frame(width: g.size.width, height: 295)
                    
                    LinearGradient(gradient: .init(colors: [Color("charcoalGrey"),Color("charcoalGrey0")]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.top)
                        .padding(.top, 44)
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
                        Text("Ophthalmologist")
                            .modifier(TextStyle7())
                        Spacer()
                    }
                    .padding(.top, 56)
                    .foregroundColor(.white)
                }
            
            }

            ClinicDetail()
                .offset(x: 0, y: -154)
                .padding(.bottom,  -154)
        }
        .background(Color.init("whiteBg"))
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        .edgesIgnoringSafeArea(.top)
    }
}

struct DetailClinicUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailClinicUIView()
    }
}

struct ClinicDetail : View {
    var body: some View{
        VStack {
            ScrollView {
                VStack(alignment: .leading){
                    Text("Ashwini Eye Clinic")
                        .modifier(TextStyle35())
                    HStack{
                        Image(systemName: "map")
                            .modifier(TextStyle17())
                        Text("Andheri East")
                            .modifier(TextStyle29())
                        Spacer()
                    }
                    RatingView(rating: .constant(4))
                    Divider().padding(.top, 8)
                    OpenDateView()
                    DetailMapView()
                    SubDetail(title: "SERVICES", subtitle: "Ophthalmology \nOphthalmology")
                    SubDetail(title: "FEEDBACK", subtitle: "Very good . courteous and efficient staff.")
                }
                .padding(18)
                
            }
            .background(Color.white)
            .cornerRadius(20, corners: [.topLeft, .topRight])
        }
        .padding(.horizontal)
    }
}

struct RatingView : View {
    @Binding var rating: Int
    
    var label = ""
    
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }
            
            ForEach(1..<maximumRating + 1) { number in
                self.image(for: number)
                    .foregroundColor(number > self.rating ? self.offColor : self.onColor)
                    .onTapGesture {
                        self.rating = number
                }
            }
        }
    }
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}
