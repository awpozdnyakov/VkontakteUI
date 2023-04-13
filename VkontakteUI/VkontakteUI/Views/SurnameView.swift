//
//  SurnameView.swift
//  VkontakteUI
//
//  Created by Andrey Pozdnyakov on 27.03.2023.
//

import SwiftUI

struct SurnameView: View {
    
    @State private var surname: String
    
    init(surname: String) {
        self.surname = surname
    }
    
    var body: some View {
        HStack {
            Text("Фамилия")
                .frame(width: 100)
            Text(surname)
                .modifier(CellModifier())
        }
    }
}
