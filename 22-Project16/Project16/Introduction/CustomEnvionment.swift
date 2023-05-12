//
//  CustomEnvionmnet.swift
//  Project16
//
// Created by Ashni Croospulle on 2023-05-11
//

import SwiftUI

class User: ObservableObject {
    @Published var name = "Taylor Swift"
}

struct EditView: View {
    @EnvironmentObject var user: User

    var body: some View {
        TextField("Name", text: $user.name)
    }
}

struct DisplayView: View {
    @EnvironmentObject var user: User

    var body: some View {
        Text(user.name)
    }
}

struct CustomEnvionment: View {
    let user = User()

    var body: some View {
        VStack {
            EditView()
            DisplayView()
        }
        .environmentObject(user)
    }
}

struct CustomEnvionmnet_Previews: PreviewProvider {
    static var previews: some View {
        CustomEnvionment()
    }
}
