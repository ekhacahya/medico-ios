//
//  BannerView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 13/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct ImageCarouselView<Content: View>: View {
    private var numberOfImages: Int
    private var timerOn: Bool
    private var indicatorOn: Bool
    private var content: Content
    
    @State private var currentIndex: Int = 0
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    init(numberOfImages: Int,timerOn: Bool = false,indicatorOn: Bool = false, @ViewBuilder content: () -> Content) {
        self.numberOfImages = numberOfImages
        self.content = content()
        self.timerOn = timerOn
        self.indicatorOn = indicatorOn
    }
    
    var body: some View {
        GeometryReader { geometry in
            // 1
            ZStack(alignment: .bottom) {
                if(self.timerOn){
                    HStack(spacing: 0) {
                        self.content
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
                    .offset(x: CGFloat(self.currentIndex) * -geometry.size.width, y: 0)
                    .animation(.spring())
                    .onReceive(self.timer) { _ in
                        self.currentIndex = (self.currentIndex + 1) % (self.numberOfImages == 0 ? 1 : self.numberOfImages)
                    }
                }else{
                    HStack(spacing: 0) {
                        self.content
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
                    .offset(x: CGFloat(self.currentIndex) * -geometry.size.width, y: 0)
                    .animation(.spring())
                }
                
                // 2
                if(self.indicatorOn){
                    HStack(spacing: 3) {
                        // 3
                        ForEach(0..<self.numberOfImages, id: \.self) { index in
                            // 4
                            Circle()
                                .frame(width: index == self.currentIndex ? 10 : 8,
                                       height: index == self.currentIndex ? 10 : 8)
                                .foregroundColor(index == self.currentIndex ? Color.blue : .white)
                                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                                .padding(.bottom, 8)
                                .animation(.spring())
                        }
                    }
                }
            }
        }
    }
}

struct BannerView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            ImageCarouselView(numberOfImages: 3) {
                ScrollView(.horizontal){
                    HStack{
                        ForEach(banners) { banner in
                            Image("group1546")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width - 26, height: geometry.size.height)
                            .clipped()
                        }
                    }
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: 152, alignment: .center)
        
    }
}
