//
//  Units.swift
//  ChallengeDay1
//
//  Created by Ashni Croospulle on 2023-05-11
//

import Foundation

/// List of units of the same type
protocol UnitType {
    static var name: String { get }
    static var units: [NamedUnit] { get }
}
