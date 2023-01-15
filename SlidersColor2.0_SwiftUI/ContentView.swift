//
//  ContentView.swift
//  SlidersColor2.0_SwiftUI
//
//  Created by Дмитрий on 15.01.2023.
//

import SwiftUI

extension View {
     func endEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ContentView: View {
    
    @FocusState var isInputActive: Bool
    @State var sliderRedValue = Double.random(in: 0...255)
    @State var sliderGreenValue = Double.random(in: 0...255)
    @State var sliderBlueValue = Double.random(in: 0...255)
    
        var body: some View {
            ZStack {
                Color(red: 0.6, green: 0.9, blue: 0.9, opacity: 1)
                    .ignoresSafeArea()
                
                VStack(spacing: 50) {
                ColorView(redColor: sliderRedValue, greenColor: sliderGreenValue, blueColor: sliderBlueValue)
                    
                    VStack(spacing: 15){
                        Sliders(sliderValue: $sliderRedValue, textValue: String(sliderRedValue), colorSlider: .red)
                            .focused($isInputActive)
                        Sliders(sliderValue: $sliderGreenValue, textValue: String(sliderGreenValue), colorSlider: .green)
                            .focused($isInputActive)
                        Sliders(sliderValue: $sliderBlueValue, textValue: String(sliderBlueValue), colorSlider: .blue)
                            .focused($isInputActive)
                    }
                }
            .padding()
                .keyboardType(.numberPad)
                .toolbar(content: {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isInputActive = false
                        }
                    }
                })
                .onTapGesture {
                    self.endEditing()
                }
            }
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
