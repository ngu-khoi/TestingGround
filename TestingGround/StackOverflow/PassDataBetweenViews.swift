//
//  PassDataBetweenViews.swift
//  TestingGround
//
//  Created by Khoi Nguyen on 8/11/22.
//

import SwiftUI

struct PassDataBetweenViews: View {
    @State var companyName = "Microsoft"
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: SettingsView(companyName: $companyName)) {
                Text("Tap to navigate to Settings")
            }
        }
    }
}

struct SettingsView: View {

@Binding var companyName : String

    var body: some View {
        Button {
//            SetData()
            print("DEBUG: SetData")
        } label: {
            HStack {
                Text("Tap to change!")
                Text("\(companyName)!")
            }
        }
    }
    
    
//    func SetData() {
//        var db = Firestore.firestore()
//        let user = Auth.auth().currentUser
//        let userName = user?.email ?? ""
//        let docRef = db.collection("CONTACT").document(userName)
//
//        docRef.getDocument { (document, error) in
//            if let document = document, document.exists {
//
//                //Setting Values
//                let data = document.data()
//                self.companyName = data?["companyName"] as? String ?? ""
//
//            } else {
//                print("Document does not exist")
//            }
//        }
//    }
//    struct HomeView: View {
//        @State var companyName = "Microsoft"
//
//        var body: some View {
//            VStack {
//                // code ...
//            }
//            .onAppear {
//                fetchData()
//            }
//
//        }
//
//        func fetchData() {
//            // code that returns companyFetchedName
//            self.companyName = companyFetchedName
//        }
//    }
}




struct PassDataBetweenViews_Previews: PreviewProvider {
    static var previews: some View {
        PassDataBetweenViews()
    }
}
