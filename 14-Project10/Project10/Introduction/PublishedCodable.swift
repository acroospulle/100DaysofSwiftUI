//
//  ContentView.swift
//  Project10
//
// Created by Ashni Croospulle on 2023-05-11

import SwiftUI

enum CodingKeys: CodingKey {
    case name
}

class User: ObservableObject, Codable {
    @Published var name = "Paul Hudson"

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
    }
}

struct PublishedCodable: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct PublishedCodable_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
