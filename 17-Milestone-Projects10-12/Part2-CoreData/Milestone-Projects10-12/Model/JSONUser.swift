//
//  User.swift
//  Milestone-Projects10-12
//
// Created by Ashni Croospulle on 2023-05-11
//

import Foundation

struct JSONUser: Codable, Identifiable {
    var id: String
    var name: String
    var age: Int
    var company: String
    var email: String
    var address: String
    var friends: [JSONFriend]
}
