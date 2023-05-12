//
//  CustomPaths.swift
//  Project9
//
//  Created by Ashni Croospulle on 2023-05-11

import SwiftUI

struct CustomPaths: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
        }
        .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
        .navigationBarTitle("Custom paths", displayMode: .inline)
    }
}

struct CustomPaths_Previews: PreviewProvider {
    static var previews: some View {
        CustomPaths()
    }
}
