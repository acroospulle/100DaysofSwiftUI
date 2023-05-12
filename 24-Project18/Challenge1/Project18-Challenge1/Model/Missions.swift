//
//  Missions.swift
//  Project18-Challenge1
//
// Created by Ashni Croospulle on 2023-05-11

import Foundation

// challenge 2
struct Missions {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
}
