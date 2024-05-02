//
//  AlgorithmOperationsView.swift
//  DevBox
//
//  Created by Vittorio Picone on 01/05/24.
//

import SwiftUI

struct AlgorithmOperationsView: View {
    var body: some View {
        NavigationStack {
            Text("AlgorithmOperationsView").foregroundStyle(.white)
                .navigationTitle("Algorithm Operations").navigationBarTitleDisplayMode(.inline)
        }.onTapGesture {
            self.hideKeyboard()
        }
    }
}

#Preview {
    AlgorithmOperationsView()
}
