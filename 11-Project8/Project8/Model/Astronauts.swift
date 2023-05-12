//
//  Astronauts.swift
//  Project8
//
// Created by Ashni Croospulle on 2023-05-11
//

import Foundation

struct Astronauts {
    static let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
}
