//
//  ContentView.swift
//  MoonShot
//
//  Created by Ino Yang Popper on 4/8/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("showingGrid") private var showingGrid = false
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationStack {
            VStack {
                Group {
                    if showingGrid {
                        GridLayoutView(astronauts: astronauts, missions: missions)
                    } else {
                        ListLayoutView(astronauts: astronauts, missions: missions)
                    }
                }
                .navigationTitle("MoonShot")
                .background(.darkBackground)
                .preferredColorScheme(.dark)
            }
            .toolbar {
                Button {
                    showingGrid.toggle()
                } label: {
                    Image(systemName: showingGrid ? "square.grid.2x2" : "list.bullet")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
