//
//  ColorPicker.swift
//  TestingGround
//
//  Created by Khoi Nguyen on 8/12/22.
//

import SwiftUI

struct ColorPicker: View {
    @State private var bgColor = Color.red

    var body: some View {
        ColorPicker("Set the background color", selection: $bgColor)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
        .padding()
    }
}

struct ColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker()
    }
}
