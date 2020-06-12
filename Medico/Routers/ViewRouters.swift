//
//  ViewRouters.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 28/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import SwiftUI

class ViewRouter: ObservableObject {
    
    init() {
        if !UserDefaults.standard.bool(forKey: Constanta.Keys.isFirstTime) {
            UserDefaults.standard.set(true, forKey: Constanta.Keys.isFirstTime)
            currentPage = Constanta.Page.walkthrough
        } else {
            currentPage = Constanta.Page.home
        }
    }
    
    @Published var currentPage: String
    @Published var currentView = Constanta.Page.dashboard
}
