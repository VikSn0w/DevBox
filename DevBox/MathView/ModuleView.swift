//
//  ModuleView.swift
//  DevBox
//
//  Created by Vittorio Picone on 02/05/24.
//

import SwiftUI

struct ModuleView: View {
    var body: some View {
        NavigationStack { 
            Text("ModuleView").foregroundStyle(.white)
                .navigationTitle("Module").navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ModuleView()
}
