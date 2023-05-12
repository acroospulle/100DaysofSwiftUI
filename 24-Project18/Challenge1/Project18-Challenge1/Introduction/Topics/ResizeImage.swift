//
//  ResizeImage.swift
//  Project18-Challenge1
//
// Created by Ashni Croospulle on 2023-05-11
//

import SwiftUI

struct ResizeImage: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                Image("swift")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width) // height is deduced from original width, target width and aspect ratio
            }
        }
    }
}

struct ResizeImage_Previews: PreviewProvider {
    static var previews: some View {
        ResizeImage()
    }
}
