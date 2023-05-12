//
//  ManualPublishing.swift
//  Project16
//
// Created by Ashni Croospulle on 2023-05-11
//

import SwiftUI

class DelayedUpdater: ObservableObject {
    /* @Published */ var value = 0 {
        willSet {
            // sending this publishes without the @Published keyword,
            // all the while giving control over value changes (for
            // instance some validation of value could be done here)
            objectWillChange.send()
        }
    }

    init() {
        for i in 1...10 {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                self.value += 1
            }
        }
    }
}

struct ManualPublishing: View {
    @ObservedObject var updater = DelayedUpdater()

    var body: some View {
        Text("Value is: \(updater.value)")
    }
}

struct ManualPublishing_Previews: PreviewProvider {
    static var previews: some View {
        ManualPublishing()
    }
}
