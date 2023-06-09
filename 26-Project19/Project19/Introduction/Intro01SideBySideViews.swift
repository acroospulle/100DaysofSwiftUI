//
//  01SideBySide.swift
//  Project19
//
// Created by Ashni Croospulle on 2023-05-11

import SwiftUI

// to try on iPad, iphone Pro, iPro max in portrait
// and landscape to see the different behaviors
struct Intro01SideBySideViews: View {
    var body: some View {
        TabView {
            NavigationView {
                Text("Hello, World!")
                    .navigationBarTitle("Primary")
            }
            .tabItem { Image(systemName: "1.circle") }

            NavigationView {
                Text("Hello, World!")
                    .navigationBarTitle("Primary")

                Text("Secondary")
            }
            .tabItem { Image(systemName: "2.circle") }

            NavigationView {
                NavigationLink(destination: Text("New secondary")) {
                    Text("Hello, World!")
                }
                .navigationBarTitle("Primary")

                Text("Secondary")
            }
            .tabItem { Image(systemName: "3.circle") }
        }
    }
}

struct Intro01SideBySideViews_Previews: PreviewProvider {
    static var previews: some View {
        Intro01SideBySideViews()
    }
}
