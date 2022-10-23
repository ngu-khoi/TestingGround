//
//  SectionListSpacing.swift
//  TestingGround
//
//  Created by Khoi Nguyen on 8/11/22.
//

import SwiftUI

struct SectionListSpacing: View {
    @State private var rowHeight: CGFloat = 40
    @State private var headerHeight: CGFloat = 60

    var body: some View {
        VStack {
            HStack {
                Text("Row height")
                Slider(value: $rowHeight, in: 40.0...80.0)
            }
            HStack {
                Text("Header height")
                Slider(value: $headerHeight, in: 60.0...80.0)
            }
            List(1..<5) { section in
                Section("Section \(section)") {
                    ForEach(1..<3) { row in
                        Text("Row \(row) of section \(section)")
                    }
                }
            }
        }
        .padding()
        .environment(\.defaultMinListRowHeight, rowHeight) // HERE
        .environment(\.defaultMinListHeaderHeight, headerHeight) // HERE
    }
}

struct SectionListSpacing_Previews: PreviewProvider {
    static var previews: some View {
        SectionListSpacing()
    }
}
