//
//  Frame.swift
//  TestingGround
//
//  Created by Khoi Nguyen on 8/19/22.
//

import SwiftUI

struct Frame: View {
    @State private var customSpacing = true
    @State private var customFrame = CGFloat(100)
    
    var body: some View {
        VStack {
            Button {
                customSpacing.toggle()
            } label: {
                Text("Custom or Not")
            }

            if !customSpacing {
                HStack(spacing: 0) {
                    Text("A")
                    
                    Text("B")
                }
            } else {
                HStack(spacing: 0) {
                    Text("A")
                    
                    Spacer()
                    
                    Text("B")
                }
                .frame(width: customFrame)
            }
        }
    }
}

struct Frame_Previews: PreviewProvider {
    static var previews: some View {
        Frame()
    }
}
