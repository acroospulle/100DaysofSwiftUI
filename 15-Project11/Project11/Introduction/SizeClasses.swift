//
//  SizeClasses.swift
//  Project11
//
//  Created by Ashni Croospulle on 2023-05-11
//

import SwiftUI

struct SizeClasses: View {
    @Environment(\.horizontalSizeClass) var sizeClass

    var body: some View {
        if sizeClass == .compact {
            return AnyView(VStack {
                Text("Active size class:")
                Text("COMPACT")
            }
            .font(.largeTitle))
        }
        else {
            return AnyView(HStack {
                Text("Active size class:")
                Text("REGULAR")
            }
            .font(.largeTitle))
        }
    }
}

struct SizeClasses_Previews: PreviewProvider {
    static var previews: some View {
        SizeClasses()
    }
}
