//
//  CodingView.swift
//  DevBox
//
//  Created by Vittorio Picone on 01/05/24.
//

import SwiftUI

struct CodingView: View {
    @State var GoToNumberBaseConversionView: Bool = false
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationStack {
            Spacer(minLength: 10)
            ScrollView {
                LazyVGrid(columns: columns, spacing: 40) {
                    NavigationLink(destination: NumberBaseConversionView()) {
                        NumberBaseConversionButton()
                    }
                    
                    NavigationLink(destination: BitwiseOperationsView())  {
                        BitwiseOperationsButton()
                    }
                    
                    NavigationLink(destination: IPCalculatorView())  {
                        IPCalculatorButton()
                    }
                    
                    NavigationLink(destination: ColorView())  {
                        ColorButton()
                    }
                    
                    NavigationLink(destination: AlgorithmOperationsView())  {
                        AlgorithmOperationsButton()
                    }
                }.multilineTextAlignment(.center).bold()
                .padding(.horizontal)
            }.contentShape(Rectangle()).clipped().foregroundColor(Color("accent_box_grid"))
            .navigationTitle("Coding Utilities")
        }
    }
}


#Preview {
    CodingView()
}

struct NumberBaseConversionButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150).overlay(
            VStack {
                HStack {
                    Image(systemName:"2.lane").font(.title).foregroundColor(Color("accent_text_grid"))
                    Image(systemName:"arrow.left.arrow.right").font(.title).foregroundColor(Color("accent_text_grid"))
                    Image(systemName:"10.lane").font(.title).foregroundColor(Color("accent_text_grid"))
                }
                Text("Number Base Conversion")
            }.foregroundColor(Color("accent_text_grid"))
        )
    }
}

struct BitwiseOperationsButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150).overlay(
            VStack {
                HStack {
                    Image(systemName:"11.lane").font(.title).foregroundColor(Color("accent_text_grid"))
                    Text("&").font(.title).foregroundColor(Color("accent_text_grid"))
                    Image(systemName:"10.lane").font(.title).foregroundColor(Color("accent_text_grid"))
                }
                Text("Bitwise\nOperations")
            }.foregroundColor(Color("accent_text_grid"))
        )
    }
}

struct IPCalculatorButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150).overlay(
            VStack {
                HStack {
                    Image(systemName:"network").font(.title).foregroundColor(Color("accent_text_grid"))
                }
                Text("IP Calculator")
            }.foregroundColor(Color("accent_text_grid"))
        )
    }
}

struct ColorButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150).overlay(
            VStack {
                HStack {
                    Image(systemName:"paintpalette.fill").font(.title).foregroundColor(Color("accent_text_grid"))
                }
                Text("Color")
            }.foregroundColor(Color("accent_text_grid"))
        )
    }
}

struct AlgorithmOperationsButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150).overlay(
            VStack {
                HStack {
                    Text("T( ) S( )").font(.title).foregroundColor(Color("accent_text_grid"))
                }
                Text("Algorithm\nOperations")
            }.foregroundColor(Color("accent_text_grid"))
        )
    }
}
