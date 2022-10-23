//
//  ImproperTabview.swift
//  TestingGround
//
//  Created by Khoi Nguyen on 9/2/22.
//

import SwiftUI

struct OnboardingView : View {
    
//    @Binding var shouldShowOnboarding: Bool
    
    
    var body : some View {
        TabView {
            PageView()
                .edgesIgnoringSafeArea(.all)
            PageView()
                .edgesIgnoringSafeArea(.all)
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}



struct PageView : View {
    
    //Missing Var
    //Missing Var
    //Missing Var
//    @Binding var shouldShowOnboarding: Bool
    
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
//                Image(imageName)
//                    .ignoresSafeArea()
                
                
//                if showsDismissButton {
//                    Button(action: {
//                        shouldShowOnboarding.toggle()
//
//
//                    }, label: {
//                        //Missing Code
//                    })
//                }
            }
            .navigationTitle("Yuh")
          
        }
        .navigationViewStyle(.stack)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ImproperTabview: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ImproperTabview_Previews: PreviewProvider {
    static var previews: some View {
        ImproperTabview()
    }
}
