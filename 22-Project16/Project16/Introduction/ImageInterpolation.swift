//
//  ImageInterpolation.swift
//  Project16
//
// Created by Ashni Croospulle on 2023-05-11
//

import SwiftUI

struct ImageInterpolation: View {
    var body: some View {
        Image("example")
            .interpolation(.none)
            .resizable()
            .scaledToFit()
            .frame(maxHeight: .infinity)
            .background(Color.black)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ImageInterpolation_Previews: PreviewProvider {
    static var previews: some View {
        ImageInterpolation()
    }
}
