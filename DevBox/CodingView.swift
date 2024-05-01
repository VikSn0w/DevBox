//
//  CodingView.swift
//  DevBox
//
//  Created by Vittorio Picone on 01/05/24.
//

import SwiftUI

struct CodingView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationStack {
            Spacer(minLength: 10)
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    NavigationLink(destination: NumbaerBaseConversionView()) {
                        Button( action: {print("box click")}){
                            RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150)
                        }.overlay(
                            VStack {
                                HStack {
                                    Image(systemName:"2.lane").font(.title).foregroundColor(.white)
                                    Image(systemName:"arrow.left.arrow.right").font(.title).foregroundColor(.white)
                                    Image(systemName:"10.lane").font(.title).foregroundColor(.white)
                                }
                                Text("Number Base Conversion")
                            }.foregroundColor(.white)
                        )
                    }
                    
                    NavigationLink(destination: BitwiseOperationsView())  {
                        Button( action: {print("box click")}){
                            RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150)
                        }.overlay(
                            VStack {
                                HStack {
                                    Image(systemName:"11.lane").font(.title).foregroundColor(.white)
                                    Text("&").font(.title).foregroundColor(.white)
                                    Image(systemName:"10.lane").font(.title).foregroundColor(.white)
                                }
                                Text("Bitwise\nOperations")
                            }.foregroundColor(.white)
                        )
                    }
                    
                    NavigationLink(destination: IPCalculatorView())  {
                        Button( action: {print("box click")}){
                            RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150)
                        }.overlay(
                            VStack {
                                HStack {
                                    Image(systemName:"network").font(.title).foregroundColor(.white)
                                }
                                Text("IP Calculator")
                            }.foregroundColor(.white)
                        )
                    }
                    
                    NavigationLink(destination: ColorView())  {
                        Button( action: {print("box click")}){
                            RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150)
                        }.overlay(
                            VStack {
                                HStack {
                                    Image(systemName:"paintpalette.fill").font(.title).foregroundColor(.white)
                                }
                                Text("Color")
                            }.foregroundColor(.white)
                        )
                    }
                    
                    NavigationLink(destination: AlgorithmOperationsView())  {
                        Button( action: {print("box click")}){
                            RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150)
                        }.overlay(
                            VStack {
                                HStack {
                                    Text("T( ) S( )").font(.title).foregroundColor(.white)
                                }
                                Text("Algorithm\nOperations")
                            }.foregroundColor(.white)
                        )
                    }
                }.multilineTextAlignment(.center).bold()
                .padding(.horizontal)
            }.contentShape(Rectangle()).clipped().foregroundColor(.black)
            .navigationTitle("Coding Utilities")
        }
    }
}


#Preview {
    CodingView()
}
