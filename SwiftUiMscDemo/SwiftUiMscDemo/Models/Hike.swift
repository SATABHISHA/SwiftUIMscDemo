//
//  Hike.swift
//  SwiftUiMscDemo
//
//  Created by SATABHISHA ROY on 20/02/25.
//

import Foundation


struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
