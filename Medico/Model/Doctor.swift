//
//  Doctor.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 11/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//

struct Doctor: Identifiable, Decodable {
    var id: Int
    var name: String
    var rate: Double
    var specialist: String
    var imageName: String
}
