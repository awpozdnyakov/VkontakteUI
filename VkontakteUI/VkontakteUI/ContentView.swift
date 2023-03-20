//
//  ContentView.swift
//  VkontakteUI
//
//  Created by Andrey Pozdnyakov on 20.03.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var login = ""
    @State private var password = ""
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 0) {
            Image("logo")
                .resizable()
                .frame(width: 80, height: 80)
                .padding(.top, 150)
            Spacer()
            TextField("Login", text: $login)
                .modifier(CustomModifier())
            TextField("Password", text: $password)
                .modifier(CustomModifier())
            Button("Go", action: {
                print("Go")
            })
            .foregroundColor(.black)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(.gray, lineWidth: 1))
            .padding(.top, 70)
            .padding(.bottom, 100)
        }
    }
}

struct CustomModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(.gray, lineWidth: 1))
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .padding(.bottom, 10)
            .keyboardType(.namePhonePad)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
