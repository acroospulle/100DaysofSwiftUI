//
//  CDataWithSwiftUI.swift
//  Project11
//
// Created by Ashni Croospulle on 2023-05-11

import SwiftUI

struct CDataWithSwiftUI: View {
    @Environment(\.managedObjectContext) var moc

    @FetchRequest(entity: Student.entity(), sortDescriptors: []) var students: FetchedResults<Student>

    var body: some View {
        VStack {
            List {
                ForEach(students, id: \.id) { student in
                    Text(student.name ?? "Umknown")
                }
            }
            Button("Add") {
                let firstNames = ["Ginny", "Harry", "Hermione", "Luna", "Ron"]
                let lastNames = ["Granger", "Lovegood", "Potter", "Weasley"]

                let chosenFirstName = firstNames.randomElement()!
                let chosenLastName = lastNames.randomElement()!

                let student = Student(context: self.moc)
                student.id = UUID()
                student.name = "\(chosenFirstName) \(chosenLastName)"

                try? self.moc.save()
            }
        }
    }
}

struct CDataWithSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        CDataWithSwiftUI()
    }
}
