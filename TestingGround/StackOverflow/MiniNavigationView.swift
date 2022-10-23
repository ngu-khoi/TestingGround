//
//  MiniNavigationView.swift
//  TestingGround
//
//  Created by Khoi Nguyen on 8/10/22.
//

import SwiftUI

struct MiniNavigationView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            
            Spacer()
            
            miniNavigationView
            
            Spacer()
            
            Text("Hello, world!")
                .padding()
        }
        .background(.red)
    }
    
    var miniNavigationView: some View {
        HStack {
            NavigationView {
                ScrollView {
                    VStack {
                        Text("Inside the mini Navigation View!")
                    }
                }
                .navigationTitle("Inside the mini Navigation view!")
            }
        }
        .frame(width: 250, height: 250)
    }
}

struct MiniNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MiniNavigationView()
    }
}
