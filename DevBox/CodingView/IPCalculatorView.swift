//
//  IPCalculatorView.swift
//  DevBox
//
//  Created by Vittorio Picone on 01/05/24.
//

import SwiftUI

struct IPCalculatorView: View {
    var body: some View {
        NavigationStack {
            Text("IPCalculatorView").foregroundStyle(.white)
                .navigationTitle("IP Calculator").navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    IPCalculatorView()
}
