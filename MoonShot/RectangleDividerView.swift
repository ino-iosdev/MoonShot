//
//  RectangleDividerView.swift
//  MoonShot
//
//  Created by Ino Yang Popper on 4/23/25.
//

import SwiftUI

struct RectangleDividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    RectangleDividerView()
}
