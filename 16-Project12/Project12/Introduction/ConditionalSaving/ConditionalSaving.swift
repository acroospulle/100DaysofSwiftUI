//
//  ConditionalSaving.swift
//  Project12
//
// Created by Ashni Croospulle on 2023-05-11

import SwiftUI

struct ConditionalSaving: View {
    @Environment(\.managedObjectContext) var moc

    var body: some View {
        Button("Save") {
            // Apple specifically states that we should always check for
            // uncommitted changes before calling save(), to avoid making
            // Core Data do work that isn’t required
            if self.moc.hasChanges {
                try? self.moc.save()
            }
        }
    }
}

struct ConditionalSaving_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalSaving()
    }
}
