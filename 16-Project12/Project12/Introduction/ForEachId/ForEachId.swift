//
//  ForEachID.swift
//  Project12
//
//  Created by Ashni Croospulle on 2023-05-11

import SwiftUI

struct Student: Hashable {
    let name: String
}

struct ForEachId: View {
    let students = [Student(name: "Harry Potter"), Student(name: "Hermione Granger")]

    var body: some View {
        List(students, id: \.self) { student in
            Text(student.name)
        }
    }
}

struct ForEachID_Previews: PreviewProvider {
    static var previews: some View {
        ForEachId()
    }
}
