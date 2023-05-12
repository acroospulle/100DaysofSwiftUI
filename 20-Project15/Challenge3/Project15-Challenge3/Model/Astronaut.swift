//
//  Astronaut.swift
//  Project15-Challenge3
//
// Created by Ashni Croospulle on 2023-05-11
//

import Foundation

struct Astronaut: Codable, Identifiable {
    let id: String
    let name: String
    let description: String

    var accessibleName: String {
        name.replacingOccurrences(of: ".", with: " ")
    }
}
