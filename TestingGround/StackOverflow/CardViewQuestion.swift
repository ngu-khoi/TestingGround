//
//  CardViewQuestion.swift
//  TestingGround
//
//  Created by Khoi Nguyen on 8/11/22.
//

import SwiftUI

class CardViewModel : ObservableObject {
    @Published var offset = CGSize.zero
    @Published var buttonPushed: Bool = false
}

struct CardView: View {
    @StateObject var cardVM = CardViewModel()

    var user: User
    var body: some View {
        VStack{
            ButtonsBar(offset: $cardVM.offset, buttonPushed: $cardVM.buttomPushed)
            Image("lady")
                .resizable()
        }
        .cornerRadius(12)
        .frame(width: 310, height: 392)
        .scaledToFit()
        .overlay(ImageOverlay(name: self.user.name ?? "", age: self.user.age ?? 0, profession: self.user.profession ?? ""), alignment: .bottomLeading)
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation
                }
                .onEnded { _ in
                    withAnimation {
                        swipeCard(width: offset.width)
                    }
                }
            )
// the offset and effects based on button push
        .offset(x: cardVM.offset.width, y: cardVM.offset.height * 0.4)
        .rotationEffect(.degrees(Double(cardVM.offset.width / 40)))
        .animation(.spring(), value: cardVM.buttonPushed)
    }

    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            offset = CGSize(width: -500, height: 0)
        case 150...500:
            offset = CGSize(width: 500, height: 0)
        default:
            offset = .zero
        }
    }
}

struct ButtonsBar:View {
    @Binding var offset: CGSize
    @Binding var buttonPushed: Bool
    
    var body: some View {
        HStack {
            Button {
                print("perform dislike")
                offset = CGSize(width: -500, height: 0)
                buttonPushed.toggle()
            } label: {
                Image("dismiss_circle")
            }.frame(width: 65)
          
            Button {
                print("perform like")
                offset = CGSize(width: 500, height: 0)
                buttonPushed.toggle()
            } label: {
                Image("like_circle")
            }.frame(width: 65)
        }
    }
}
