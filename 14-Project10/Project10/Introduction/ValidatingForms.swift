//
//  ValidatingForms.swift
//  Project10
//
// Created by Ashni Croospulle on 2023-05-11
import SwiftUI

struct ValidatingForms: View {
    @State var username = ""
    @State var email = ""

    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }

    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }

            Section {
                Button("Create account") {
                    print("Creating account...")
                }
            }
            .disabled(disableForm)
        }
    }
}

struct ValidatingForms_Previews: PreviewProvider {
    static var previews: some View {
        ValidatingForms()
    }
}
