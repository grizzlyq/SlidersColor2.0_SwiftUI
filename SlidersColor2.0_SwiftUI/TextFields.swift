//
//  TextFields.swift
//  SlidersColor2.0_SwiftUI
//
//  Created by Дмитрий on 15.01.2023.
//

import SwiftUI

struct TextFields: View {
    
    @Binding var textValue: String
    @Binding var value: Double
    
    @State var showAlert = false
    
    var body: some View {
        
        TextField("", text: $textValue) {_ in
            checkValue()
        }
        .frame(width:45, height: 20)
        .multilineTextAlignment(.center)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .background(Color.white)
        .padding(.leading, 5)
        .onTapGesture {
            endEditing()
            }
        .alert("Invalid data format", isPresented: $showAlert, actions: {}) {
            Text("Enter value from range 0...255")
        }
       
    }
    
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
        } else {
            showAlert.toggle()
            self.value = 0
            self.textValue = "0"
        }
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields(textValue: .constant("0"), value: .constant(0))
    }
}
