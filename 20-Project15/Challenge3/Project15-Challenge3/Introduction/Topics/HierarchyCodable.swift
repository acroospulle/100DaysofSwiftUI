//
//  HierarchyCodable.swift
//  Project15-Challenge3
//
//  Created by Ashni Croospulle on 2023-05-11

import SwiftUI

struct HierarchyCodable: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
                {
                    "name": "Taylor Swift",
                    "address": {
                        "street": "555, Taylor Swift Avenue",
                        "city": "Nashville"
                    }
                }
            """

            struct User: Codable {
                var name: String
                var address: Address
            }

            struct Address: Codable {
                var street: String
                var city: String
            }

            let data = Data(input.utf8)
            let decoder = JSONDecoder()

            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

struct HierarchyCodable_Previews: PreviewProvider {
    static var previews: some View {
        HierarchyCodable()
    }
}
