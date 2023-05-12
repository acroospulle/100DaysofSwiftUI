//
//  ExpenseItem.swift
//  Project7
//
// Created by Ashni Croospulle on 2023-05-11
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Int
}
