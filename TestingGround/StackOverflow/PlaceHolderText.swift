//
//  PlaceHolderText.swift
//  TestingGround
//
//  Created by Khoi Nguyen on 8/19/22.
//

import SwiftUI

struct PlaceHolderText: View {
    @State private var text = ""
    let placeholder = "Placeholder"

    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .topLeading) {
                    if text.isEmpty {
                        Text(placeholder)
                            .foregroundColor(Color(.placeholderText))
                            .padding(.horizontal)
                            .padding(.vertical, 12)
                    }
                    
                    TextEditor(text: $text)
                        .padding(4)
                }
                .font(.title)
            }
        }
    }
}

struct PlaceHolderText_Previews: PreviewProvider {
    static var previews: some View {
        PlaceHolderText()
    }
}
