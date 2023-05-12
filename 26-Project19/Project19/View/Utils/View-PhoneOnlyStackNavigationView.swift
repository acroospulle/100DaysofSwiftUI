//
//  View-PhoneOnlyStackNavigationView.swift
//  Project19
//
// Created by Ashni Croospulle on 2023-05-11
//

import SwiftUI

extension View {
    func phoneOnlyStackNavigationView() -> some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return AnyView(self.navigationViewStyle(StackNavigationViewStyle()))
        } else {
            return AnyView(self)
        }
    }
}
