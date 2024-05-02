//
//  ContentView.swift
//  DevBox
//
//  Created by Vittorio Picone on 30/04/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }.foregroundColor(.black)
            MathsView()
                .tabItem {
                    Label("Math", systemImage: "number.square.fill")
                }.foregroundColor(.black)
            CodingView()
                .tabItem {
                    Label("Coding", systemImage: "desktopcomputer")
                }.foregroundColor(.black)
        }.accentColor(Color("accent_tab_bar"))
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

#Preview {
    MainView()
}
