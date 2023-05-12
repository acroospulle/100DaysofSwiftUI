//
//  PushingViews.swift
//  Project8
//
//  Created by Ashni Croospulle on 2023-05-11

import SwiftUI

struct PushingViews: View {
    var body: some View {
        // MainView already contains a NavigationView
//        NavigationView {
        List(0..<100) { row in
                NavigationLink(destination: Text("Detail View \(row)")) {
                    Text("Row \(row)")
                }
            }
            .navigationBarTitle("SwiftUI")
//        }
    }
}

struct PushingViews_Previews: PreviewProvider {
    static var previews: some View {
        PushingViews()
    }
}
