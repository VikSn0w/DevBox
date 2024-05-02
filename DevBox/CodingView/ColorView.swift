//
//  ColorView.swift
//  DevBox
//
//  Created by Vittorio Picone on 01/05/24.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        NavigationStack {
            Text("ColorView").foregroundStyle(.white)
                .navigationTitle("Color").navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ColorView()
}
