//
//  MotherView.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 28/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

struct MotherView : View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
//        VStack {
//            if viewRouter.currentPage == Constanta.Page.walkthrough {
//                HomeParentUIView()
//            }
//            else if viewRouter.currentPage == Constanta.Page.home {
//                HomeParentUIView()
//            }
//        }
        MainUIView()
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
