//
//  Units.swift
//  ChallengeDay1
//
//   Created by Ashni Croospulle on 2023-05-11
//

import Foundation

/// List of unit types supported in this application
struct UnitTypes {
    static let types: [UnitType.Type] = [Temperature.self, Length.self, Time.self, Volume.self]
}
