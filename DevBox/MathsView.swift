import SwiftUI

struct MathsView: View {
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
                                    Image(systemName:"percent").font(.title)
                                }
                                Text("Module")
                            }.foregroundColor(.white)
                        )
                    }
                    
                    NavigationLink(destination: BitwiseOperationsView())  {
                        Button( action: {print("box click")}){
                            RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150)
                        }.overlay(
                            VStack {
                                HStack {
                                    Image(systemName:"dice.fill").font(.title).foregroundColor(.white)
                                }
                                Text("Random Picker")
                            }.foregroundColor(.white)
                        )
                    }
                    
                    NavigationLink(destination: IPCalculatorView())  {
                        Button( action: {print("box click")}){
                            RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150)
                        }.overlay(
                            VStack {
                                HStack {
                                    Image(systemName:"questionmark.app.dashed").font(.title).foregroundColor(.white)
                                }
                                Text("Prime Verifier")
                            }.foregroundColor(.white)
                        )
                    }
                }.multilineTextAlignment(.center).bold()
                .padding(.horizontal)
            }.contentShape(Rectangle()).clipped().foregroundColor(.black)
            .navigationTitle("Math Utilities")
        }
    }
}

struct MathsView_Previews: PreviewProvider {
    static var previews: some View {
        MathsView()
    }
}
