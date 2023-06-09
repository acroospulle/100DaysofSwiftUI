//
//  Volume.swift
//  ChallengeDay1
//
//   Created by Ashni Croospulle on 2023-05-11
//

import Foundation

struct Volume: UnitType {
    static var name = "Volume"

    private static let milliliters = NamedUnit(name: "Milliliters", unit: UnitVolume.milliliters)
    private static let liters = NamedUnit(name: "Liters", unit: UnitVolume.liters)
    private static let cups = NamedUnit(name: "Cups", unit: UnitVolume.cups)
    private static let pints = NamedUnit(name: "Pints", unit: UnitVolume.pints)
    private static let gallons = NamedUnit(name: "Gallons", unit: UnitVolume.gallons)

    static let units = [milliliters, liters, cups, pints, gallons]
}
