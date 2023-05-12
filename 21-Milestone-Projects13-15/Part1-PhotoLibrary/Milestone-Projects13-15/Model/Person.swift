//
//  Person.swift
//  Milestone-Projects13-15
//
//  Created by Ashni Croospulle on 2023-05-11

import Foundation

struct Person: Codable, Identifiable {
    var id = UUID()
    var name: String
    var imagePath: String?

    /// image is image data in any format
    mutating func setImage(image: Data) {
        imagePath = ImageUtils().setImage(image: image)
    }

    func getImage() -> Data? {
        return ImageUtils().getImage(imagePath: imagePath)
    }

    mutating func deleteImage() {
        ImageUtils().deleteImage(imagePath: imagePath)
        imagePath = nil
    }
}

extension Person: Equatable {

    static func ==(lhs: Person, rhs: Person) -> Bool {
        lhs.id == rhs.id
    }
}
