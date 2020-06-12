//
//  HomeParentUIView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 27/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct HomeParentUIView: View {
    @State var isLoggedIn = UserDefaults.standard.value(forKey: Constanta.Keys.isLoggedIn) as? Bool ?? false
    @State var isFirstTime = UserDefaults.standard.value(forKey: Constanta.Keys.isFirstTime) as? Bool ?? true
    var body: some View {
        VStack{
            if self.isFirstTime {
                WalkthroughUIView()
            }else{
                if self.isLoggedIn {
                    MainUIView()
                }else{
                    LoginUIView()
                }
            }
        }
        .onAppear{
            NotificationCenter.default.addObserver(forName: NSNotification.Name(Constanta.Keys.isLoggedIn), object: nil, queue: .main) { _ in
                self.isLoggedIn = UserDefaults.standard.value(forKey: Constanta.Keys.isLoggedIn) as? Bool ?? false
            }
            NotificationCenter.default.addObserver(forName: NSNotification.Name(Constanta.Keys.isFirstTime), object: nil, queue: .main) { _ in
                self.isFirstTime = UserDefaults.standard.value(forKey: Constanta.Keys.isFirstTime) as? Bool ?? true
                
                print(self.isFirstTime)
            }
        }
    }
}

struct HomeParentUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeParentUIView()
    }
}
