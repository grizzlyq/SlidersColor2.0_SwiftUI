//
//  LabelValue.swift
//  SlidersColor2.0_SwiftUI
//
//  Created by Дмитрий on 15.01.2023.
//

import SwiftUI

struct LabelValue: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 33, height: 20)
    }
}

struct LabelValue_Previews: PreviewProvider {
    static var previews: some View {
        LabelValue(value: 777)
    }
}
