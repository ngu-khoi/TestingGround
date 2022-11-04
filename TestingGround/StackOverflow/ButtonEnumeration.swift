//
//  ButtonEnumeration.swift
//  TestingGround
//
//  Created by Khoi Nguyen on 10/23/22.
//

import SwiftUI

enum buttonSelection {
    case buttonNone, button1, button2
}

struct ButtonEnumeration: View {
    var body: some View {
//        @State private var currentSelection : buttonSelection = .buttonNone
//
//        VStack {
//            Button(action: {
//                withAnimation(.spring()) {
//                    self.currentSelection = .button1
//                    mainViewModel.showFilters.toggle()
//                }
//            }, label: {
//                Image(systemName: "slider.horizontal.3")
//                    .font(.title3)
//                    .padding(10)
//                    .foregroundColor(currentSelection == .button1 ? .accentColor : Color.secondary)
//            }) //: Button
//            Button(action: {
//                withAnimation(.spring()) {
//                    self.currentSelection = .button2
//                    showMapDisplaySheet.toggle()
//                }
//            }, label: {
//                Image(systemName: "map")
//                    .font(.title3)
//                    .padding(10)
//                    .foregroundColor(currentSelection == .button2 ? .accentColor : Color.secondary)
//            }) //: Button
//            .sheet(isPresented: $showMapDisplaySheet, onDismiss: {
//                print("Dismissed")
//                currentSelection = .buttonNone
//            }) {
//                MapDisplaySheetView()
//                .presentationDetents([.fraction(0.25)])
//            }
//        } //: VStack
//        .background {
//            RoundedRectangle(cornerRadius: 8)
//                .fill(Color(uiColor: .systemBackground))
//        }
        Text("Hello world!")
    }
}

struct ButtonEnumeration_Previews: PreviewProvider {
    static var previews: some View {
        ButtonEnumeration()
    }
}
