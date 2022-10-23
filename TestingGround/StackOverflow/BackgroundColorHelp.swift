//
//  BackgroundColorHelp.swift
//  TestingGround
//
//  Created by Khoi Nguyen on 8/11/22.
//

import SwiftUI

struct BackgroundColorHelp: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .frame(width: nil, height: 250)
                    VStack {
                        Text("Verfügbar")
                            .foregroundColor(.gray)
                            .italic()
                            .font(.title2)
                        Text("Money")
                            .foregroundColor(.blue)
                            .bold()
                            .font(.largeTitle)
                        HStack {
                            Spacer()
                            VStack(alignment: .leading) {
                                Text("Einkommen")
                                    .foregroundColor(.gray)
                                    .italic()
                                HStack {
                            Label("", systemImage: "arrow.up.circle")
                                .foregroundColor(.green)
                                    Text("money").bold()
                                }
                            }
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("Ausgaben")
                                    .foregroundColor(.gray)
                                    .italic()
                                HStack {
                            Label("", systemImage: "arrow.down.circle")
                                .foregroundColor(.red)
                                    Text("money").bold()
                                }
                            }
                            Spacer()
                        }
                        .padding(5)
                    }
                }.background(Color.red)
                List {
//                    ForEach(money) { money in
//                        NavigationLink(destination: EditMoneyView(money: money)) {
//                            HStack {
//                                VStack(alignment: .leading, spacing: 6) {
//                                    Text(money.name!)
//                                        .bold()
//
//                                    Text("\(money.amount, specifier: "%.2f")") + Text("€")
//                                }
//                                Spacer()
//                                Text("\(money.date!, style: .date)")
//                                    .foregroundColor(.gray)
//                                    .italic()
//                            }
//                        }
//                    }
//                    .onDelete(perform: deleteMoney)
                }
            }
            .navigationBarTitle("Financist", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
//                        showingAddView.toggle()
                        print("DEBUG: Button")
                    } label: {
                        Label("Hinzufügen", systemImage: "plus.circle")
                    }
                }
            }
            .background(.red)
//            .sheet(isPresented: $showingAddView) {
//                AddMoneyView()
//            }
        }

    }
}

struct BackgroundColorHelp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColorHelp()
    }
}
