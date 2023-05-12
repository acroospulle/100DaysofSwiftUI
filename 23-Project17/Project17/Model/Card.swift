//
//  Card.swift
//  Project17
//
// Created by Ashni Croospulle on 2023-05-11
//

import Foundation

struct Card: Codable, Identifiable {
    let id = UUID()
    let prompt: String
    let answer: String

    static var example: Card {
        return Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
    }
}
