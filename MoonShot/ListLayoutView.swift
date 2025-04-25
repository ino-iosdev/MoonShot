//
//  ListLayoutView.swift
//  MoonShot
//
//  Created by Ino Yang Popper on 4/25/25.
//

import SwiftUI

struct ListLayoutView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                    HStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding(.trailing)
                        
                        VStack(alignment: .leading) {
                            Text(mission.displayName)
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            Text(mission.formattedLaunchDate)
                                .font(.caption)
                                .foregroundStyle(.white.opacity(0.5))
                        }
                    }
                    .listRowBackground(Color.darkBackground)
                }
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ListLayoutView()
        .preferredColorScheme(.dark)
}
