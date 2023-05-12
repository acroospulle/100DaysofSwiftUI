//
//  Activity.swift
//  Milestone-Projects7-9
//
// Created by Ashni Croospulle on 2023-05-11
//

import Foundation

struct Activity: Identifiable, Codable {

    let id = UUID()

    var title: String {
        didSet { date = Date() }
    }

    var description: String {
        didSet { date = Date() }
    }

    /// last modification date
    var date = Date()

    var completedTimes: Int = 0 {
        didSet {
            date = Date()
            if completedTimes < 0 {
                completedTimes = 0
            }
        }
    }
}
