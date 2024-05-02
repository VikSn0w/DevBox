//
//  NumberBaseConversionModel.swift
//  DevBox
//
//  Created by Vittorio Picone on 02/05/24.
//

import Foundation

class NumberBaseConversionModel: ObservableObject {
    @Published var selectedBase = "DEC"
    @Published var number = ""
    @Published var BIN = "0b?"
    @Published var HEX = "0x?"
    @Published var OCT = "0c?"
    @Published var DEC = "?"
    
    func convert() {
        switch selectedBase {
        case "BIN":
            if let inputValue = Int(number, radix: 2) {
                BIN = "0b" + String(inputValue)
                HEX = "0x" + String(inputValue, radix: 16)
                OCT = "0c" + String(inputValue, radix: 8)
                DEC = binaryToDecimal(binary: String(inputValue))
            }
        case "DEC":
            if let inputValue = Int(number) {
                BIN = "0b" + String(inputValue, radix: 2)
                HEX = "0x" + String(inputValue, radix: 16)
                OCT = "0c" + String(inputValue, radix: 8)
                DEC = String(inputValue)
            }
        case "HEX":
            if let hexValue = Int(number, radix: 16) {
                BIN = "0b" + String(hexValue, radix: 2)
                HEX = "0x" + String(hexValue, radix: 16)
                OCT = "0c" + String(hexValue, radix: 8)
                DEC = String(hexValue)
            }
        case "OCT":
            if let octValue = Int(number, radix: 8) {
                BIN = "0b" + String(octValue, radix: 2)
                HEX = "0x" + String(octValue, radix: 16)
                OCT = "0c" + String(octValue, radix: 8)
                DEC = String(octValue)
            }
        default:
            break
        }
    }
}


func binaryToDecimal(binary: String) -> String {
    var decimal = 0
    var base = 1
     
    for digit in binary.reversed() {
        if digit == "1" {
            decimal += base
        }
        base *= 2
    }
    return String(decimal)
}

