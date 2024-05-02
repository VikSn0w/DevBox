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
                LazyVGrid(columns: columns, spacing: 40) {
                    NavigationLink(destination: ModuleView()) {
                        ModuleButton()
                    }
                    
                    NavigationLink(destination: ModuleView())  {
                        RandomPickerButton()
                    }
                    
                    NavigationLink(destination: ModuleView())  {
                        PrimeVerifierButton()
                    }
                }.multilineTextAlignment(.center).bold()
                .padding(.horizontal)
            }.contentShape(Rectangle()).clipped().foregroundColor(Color("accent_box_grid"))
            .navigationTitle("Math Utilities")
        }
    }
}

struct MathsView_Previews: PreviewProvider {
    static var previews: some View {
        MathsView()
    }
}

struct ModuleButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150).overlay(
            VStack {
                HStack {
                    Image(systemName:"percent").font(.title)
                }
                Text("Module")
            }.foregroundColor(Color("accent_text_grid"))
        )
    }
}

struct RandomPickerButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150).overlay(
            VStack {
                HStack {
                    Image(systemName:"dice.fill").font(.title).foregroundColor(Color("accent_text_grid"))
                }
                Text("Random Picker")
            }.foregroundColor(Color("accent_text_grid"))
        )
    }
}

struct PrimeVerifierButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150).overlay(
            VStack {
                HStack {
                    Image(systemName:"questionmark.app.dashed").font(.title).foregroundColor(Color("accent_text_grid"))
                }
                Text("Prime Verifier")
            }.foregroundColor(Color("accent_text_grid"))
        )
    }
}
