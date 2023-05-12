//
//  ValueOfControls.swift
//  Project15
//
// Created by Ashni Croospulle on 2023-05-11
//

import SwiftUI

struct ValueOfControls: View {
    @State private var estimate = 25.0
    @State private var rating = 3

    var body: some View {
        VStack {
            Spacer()

            Slider(value: $estimate, in: 0...50)
                .padding()
                .accessibility(value: Text("\(Int(estimate))"))
            Text("Use accessibility value to read actual slider value instead of percentage")

            Spacer()

            Stepper("Rate our service: \(rating)/5", value: $rating, in: 1...5)
                .accessibility(value: Text("\(rating) out of 5"))
            Text("Use accessibility value to read custom text for value instead of stepper title")

            Spacer()
        }
    }
}

struct ValueOfControls_Previews: PreviewProvider {
    static var previews: some View {
        ValueOfControls()
    }
}
