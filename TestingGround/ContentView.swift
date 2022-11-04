//
//  ContentView.swift
//  TestingGround
//
//  Created by Khoi Nguyen on 8/10/22.
//

import SwiftUI
        
struct ContentView: View {
    @State var text = "Sent"
    var body: some View {
        VStack {
            if text == "Sent" {
                Text("Hello world")
            } else {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
