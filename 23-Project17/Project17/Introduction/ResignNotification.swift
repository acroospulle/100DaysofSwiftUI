//
//  BackgroundNotification.swift
//  Project17
//
//  Created by Ashni Croospulle on 2023-05-11
//

import SwiftUI

struct ResignNotification: View {
    var body: some View {
        Text("Hello, World!")
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
                print("Moving to the background!")
            }
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
                print("Moving back to the foreground!")
            }
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.userDidTakeScreenshotNotification)) { _ in
                print("User took a screenshot!")
            }
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.significantTimeChangeNotification)) { _ in
                print("Time changed significantly!")
            }
            .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardDidShowNotification)) { _ in
                print("Keyboard was shown!")
            }
    }
}

struct BackgroundNotification_Previews: PreviewProvider {
    static var previews: some View {
        ResignNotification()
    }
}
