//
//  WalkthroughUIView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 31/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct WalkthroughUIView: View {
    @State var currentPageIndex = 0
    @State var buttonText = "Next"
    
    var subviews = [
        UIHostingController(rootView: SubView(data: Walkthrough(id: 1, title: "Search Doctors", subTitle: "Get list of best doctor nearby you", image: "wtdoctor"))),
        UIHostingController(rootView: SubView(data: Walkthrough(id: 1, title: "Book Appointment", subTitle: "Book an appointment with a right doctor", image: "wtappointment"))),
        UIHostingController(rootView: SubView(data: Walkthrough(id: 1, title: "Book Diagonostic", subTitle: "Search and book diagnostic test", image: "wtdiagnostic")))
    ]
    var body: some View {
        VStack(alignment: .center) {
            PageViewController(currentPageIndex: $currentPageIndex, viewControllers: subviews)
                .frame(height: 500)
//            PageControl(numberOfPages: subviews.count, currentPageIndex: $currentPageIndex)
            HStack {
                Button(action: {
                    if self.currentPageIndex+1 == self.subviews.count {
                        UserDefaults.standard.set(false, forKey: Constanta.Keys.isFirstTime)
                        NotificationCenter.default.post(name: NSNotification.Name(Constanta.Keys.isFirstTime), object: nil)
                    } else {
                        self.currentPageIndex += 1
                    }
                    
                    self.buttonText = self.currentPageIndex+1 == self.subviews.count ? "Done" : "Next"
                }) {
                    Text(self.buttonText)
                        .padding(.vertical, 16)
                        .padding(.horizontal, 68)
                        .modifier(PoppinsSB(foreground: Color.init("bluishPurple")))
                        .overlay(RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.init("paleLilacTwo"), lineWidth: 1))
                }
            }
            .padding()
        }
    }
}

struct SubView :View {
    var data : Walkthrough
    var body : some View{
        VStack(alignment: .center, spacing: 10) {
            VStack{
                Image(data.image)
                Text(data.title)
                    .modifier(TextStyle33())
                    .padding(.top, 44)
                Text(data.subTitle)
                    .modifier(TextStyle34())
                    .padding(.top, 8)
            }
        }
        .padding(.horizontal)
        .padding(.top, 16.0)
    }
}

struct ButtonContent: View {
    @State var title = "Next"
    var body: some View {
        Text(title)
            .padding(.vertical, 16)
            .padding(.horizontal, 68)
            .modifier(PoppinsSB(foreground: Color.init("bluishPurple")))
            .overlay(RoundedRectangle(cornerRadius: 25)
                .stroke(Color.init("paleLilacTwo"), lineWidth: 1))
    }
}

struct WalkthroughUIView_Previews: PreviewProvider {
    static var previews: some View {
        WalkthroughUIView()
    }
}
