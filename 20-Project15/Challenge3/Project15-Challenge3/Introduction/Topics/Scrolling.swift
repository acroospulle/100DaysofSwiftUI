//
//  Scrolling.swift
//  Project15-Challenge3
//
//  Created by Ashni Croospulle on 2023-05-11
//

import SwiftUI

struct CustomText: View {
    var text: String

    var body: some View {
        Text(text)
    }

    init(_ text: String) {
        print("Creating a CustomText")
        self.text = text
    }
}

struct Scrolling: View {
    var body: some View {
        // contrary to List, all inner views including not visible ones are created at ones
        ScrollView(.vertical) {
            VStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct Scrolling_Previews: PreviewProvider {
    static var previews: some View {
        Scrolling()
    }
}
