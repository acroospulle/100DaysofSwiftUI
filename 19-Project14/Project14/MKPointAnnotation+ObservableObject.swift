//
//  MKPointAnnotation+ObservableObject.swift
//  Project14
//
// Created by Ashni Croospulle on 2023-05-11

import MapKit

extension MKPointAnnotation: ObservableObject {

    // no need for published as view doesn't need to be refreshed as the user type
    public var wrappedTitle: String {
        get {
            self.title ?? ""
        }
        set {
            title = newValue
        }
    }

    // no need for published as view doesn't need to be refreshed as the user type
    public var wrappedSubtitle: String {
        get {
            self.subtitle ?? ""
        }
        set {
            subtitle = newValue
        }
    }
}
