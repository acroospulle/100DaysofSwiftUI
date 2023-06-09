//
//  AstronautView.swift
//  Project15-Challenge3
//
// Created by Ashni Croospulle on 2023-05-11
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    // challenge 2
    let missions: [Mission]

    // challenge 2
    init(astronaut: Astronaut) {
        self.astronaut = astronaut

        var matches = [Mission]()

        let missions = Missions.missions
        for mission in missions {
            if mission.crew.first(where: { $0.name == astronaut.id }) != nil {
                matches.append(mission)
            }
        }

        self.missions = matches
    }

    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    // Project 15 - Challenge 3
                    Image(decorative: self.astronaut.id)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width)

                    Text(self.astronaut.description)
                        .padding()
                        // fix what seems like a SwiftUI bug where on certain devices
                        // (like the iPhone 11 Pro Max) and certain astronauts (like
                        // Edward H. White II from Apollo 1) the text would be truncated,
                        // and the image pushed down views default layout priority is 0.
                        // giving it 1 gives it a higher priority than other views to grow
                        // or shrink. it'll then take up all available space
                        .layoutPriority(1)

                    // Project 15 - Challenge 3
                    Text("Missions")
                        .hidden()
                        .frame(width: 0, height: 0)
                        .accessibility(label: Text("Missions"))

                    // challenge 2
                    ForEach(self.missions) { mission in
                        HStack {
                            // Project 15 - Challenge 3
                            Image(decorative: mission.image)
                                .resizable()
                            .scaledToFit()
                                .frame(width: 75, height: 75)

                            Text(mission.displayName)
                                .font(.headline)

                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
        .navigationBarTitle(Text(astronaut.name), displayMode: .inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts: [Astronaut] = Astronauts.astronauts

    static var previews: some View {
        AstronautView(astronaut: astronauts[0])
    }
}
