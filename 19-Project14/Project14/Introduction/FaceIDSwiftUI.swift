//
//  FaceIDSwiftUI.swift
//  Project14
//
//  Created by Ashni Croospulle on 2023-05-11
//

import LocalAuthentication
import SwiftUI

struct FaceIDSwiftUI: View {
    @State private var isUnlocked = false

    var body: some View {
        VStack {
            if self.isUnlocked {
                Text("Unlocked")
            }
            else {
                Text("Locked")
            }
        }
        .onAppear(perform: authenticate)
    }

    func authenticate() {
        let context = LAContext()
        var error: NSError?

        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Unlock you data"

            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                DispatchQueue.main.async {
                    if success {
                        self.isUnlocked = true
                    }
                    else {

                    }
                }
            }
        }
        else {

        }
    }
}

struct FaceIDSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        FaceIDSwiftUI()
    }
}
