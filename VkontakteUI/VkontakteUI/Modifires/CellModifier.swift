//
//  CellModifier.swift
//  VkontakteUI
//
//  Created by Andrey Pozdnyakov on 27.03.2023.
//

import SwiftUI

struct CellModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
//            .padding()
            .frame(width: 250)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(.gray, lineWidth: 1))
            .padding(.trailing, 10)
    }
}
