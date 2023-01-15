//
//  ColorView.swift
//  SlidersColor2.0_SwiftUI
//
//  Created by Дмитрий on 15.01.2023.
//

import SwiftUI

struct ColorView: View {
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        Rectangle()
            .frame(width: 290, height: 140)
            .cornerRadius(20)
            .foregroundColor(Color(red: redColor/255, green: greenColor/255, blue: blueColor/255, opacity: 1))
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.white, lineWidth: 4))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redColor: 0, greenColor: 0, blueColor: 0)
    }
}
