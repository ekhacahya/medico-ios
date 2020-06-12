//
//  DataLocal.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 07/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

import UIKit
import SwiftUI

let cityData: [City] = load("dataKota.json")
let menuData: [Menu] = load("menu.json")
let doctors: [Doctor] = load("doctors.json")
let banners: [Banner] = load("banners.json")
let specialist: [Specialist] = load("specialist.json")
let profileMenus: [ProfileMenu] = load("profileMenu.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
