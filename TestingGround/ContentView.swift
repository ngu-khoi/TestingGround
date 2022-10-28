//
//  ContentView.swift
//  TestingGround
//
//  Created by Khoi Nguyen on 8/10/22.
//

import SwiftUI
        
struct ContentView: View {
    @State private var showSheetView = false

    var body: some View {
        NavigationView {
            VStack {
                Color.blue
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showSheetView = true
                    } label: {
                        Text("Filter")
                            .padding()
                            .background(Color.red)
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showSheetView) {
            FilterView()
        }

    }
}

struct FilterView: View {
    var body: some View {
        Color.green
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
