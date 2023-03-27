//
//  GroupView.swift
//  VkontakteUI
//
//  Created by Andrey Pozdnyakov on 27.03.2023.
//

import SwiftUI

struct GroupView: View {
    
    @State private var group: String
    
    init(group: String) {
        self.group = group
    }
    
    var body: some View {
        HStack {
            Text("Группа")
                .frame(width: 100)
            Text(group)
                .modifier(CellModifier())
        }
    }
}
