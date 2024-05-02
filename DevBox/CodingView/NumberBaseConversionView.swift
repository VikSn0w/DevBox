import SwiftUI

struct NumberBaseConversionView: View {
    @StateObject var viewModel = NumberBaseConversionModel()

    var body: some View {
        NavigationStack {
            VStack {
                InputView(selectedBase: $viewModel.selectedBase, number: $viewModel.number)
                CalculateButton(action: {
                    viewModel.convert()
                })
                .padding(.vertical, 30.0)
                ResultView(BIN: $viewModel.BIN, HEX: $viewModel.HEX, OCT: $viewModel.OCT, DEC: $viewModel.DEC)
            }.font(.title2)
            .navigationTitle("Number Base Conversion").navigationBarTitleDisplayMode(.inline)
            
        }.onTapGesture {
            hideKeyboard()
        }
        
    }
}

struct InputView: View {
    var base = ["BIN", "DEC", "HEX", "OCT"]
    @Binding var selectedBase: String
    @Binding var number: String

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 250, height: 150)
            .overlay(
                VStack {
                    HStack {
                        Text("From")
                        Picker("Please select base", selection: $selectedBase) {
                            ForEach(base, id: \.self) {
                                Text($0)
                            }
                        }
                        .tint(Color("accent_text_grid"))
                    }
                    .foregroundColor(Color("accent_text_grid"))
                    TextField(
                        "Number to convert",
                        text: $number
                    )
                    .background(RoundedRectangle(cornerRadius: 5).fill(Color("accent_text_grid")))
                    .frame(width: 200.0)
                    .foregroundColor(Color("accent_box_grid"))
                    .padding([.leading, .bottom, .trailing], 20.0)
                    .disableAutocorrection(true)
                    .onChange(of: number) { newValue in
                        validateInput(newValue)
                    }
                }
            )
    }

    private func validateInput(_ newValue: String) {
        switch selectedBase {
        case "BIN":
            number = newValue.filter { $0 == "0" || $0 == "1" }
        case "DEC":
            number = newValue.filter { $0.isNumber }
        case "HEX":
            number = newValue.filter { $0.isHexDigit }
        case "OCT":
            number = newValue.filter { $0.isNumber && $0.isWholeNumber }
        default:
            break
        }
    }
}

struct CalculateButton: View {
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 250, height: 50)
                .overlay(
                    Text("Calculate")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(Color("accent_text_grid"))
                )
        }
        .tint(Color("accent_box_grid"))
    }
}

struct ResultView: View {
    @Binding var BIN: String
    @Binding var HEX: String
    @Binding var OCT: String
    @Binding var DEC: String

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 250, height: 150)
            .overlay(
                VStack {
                    HStack {
                        Text("BIN: ").bold()
                        Text(BIN)
                    }
                    .foregroundColor(Color("accent_text_grid"))
                    HStack {
                        Text("HEX: ").bold()
                        Text(HEX)
                    }
                    .foregroundColor(Color("accent_text_grid"))
                    HStack {
                        Text("OCT: ").bold()
                        Text(OCT)
                    }
                    .foregroundColor(Color("accent_text_grid"))
                    HStack {
                        Text("DEC: ").bold()
                        Text(DEC)
                    }
                    .foregroundColor(Color("accent_text_grid"))
                }
                .tint(Color("accent_box_grid"))
            )
    }
}

struct NumberBaseConversionView_Previews: PreviewProvider {
    static var previews: some View {
        NumberBaseConversionView()
    }
}
