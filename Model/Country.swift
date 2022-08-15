//
//  Country.swift
//  LänderSwiftUI
//
//  Created by Domenic Moran on 14.08.22.
//

import Foundation

struct Country: Decodable, Identifiable {
    let id: Int
    let countryName: String
    let imageName: String
    let details: [String]
}
