//
//  LoginScreenView.swift
//  VkontakteUI
//
//  Created by Andrey Pozdnyakov on 20.03.2023.
//

import SwiftUI

struct LoginScreenView: View {
    
    @State private var login = ""
    @State private var password = ""
//    @Binding var isUserLoggedIn: Bool
    @State private var shouldShowMainView: Bool = false
    
//    init(isUserLoggedIn: Binding<Bool>) {
//        self._isUserLoggedIn = isUserLoggedIn
//    }
    
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
                verifyLoginData()
            })
            .foregroundColor(.black)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(.gray, lineWidth: 1))
            .padding(.top, 70)
            .padding(.bottom, 100)
            NavigationLink(destination: FriendsScreenView(), isActive:
                            $shouldShowMainView) {
                                EmptyView()
            }
            SurnameView(surname: "Pozdnyakov")
                .padding(.bottom, 5)

            GroupView(group: "Cover")
                .padding(.bottom, 50)
        }
        .overlay(RoundedRectangle(cornerRadius: 50).stroke(.gray, lineWidth: 1))
        .padding(.init(top: 10, leading: 10, bottom: 10, trailing: 10))
        .ignoresSafeArea()
    }
    
    private func verifyLoginData() {
    if login == "111" && password == "111" {
    } else {

    }
    password = ""
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
        LoginScreenView()
    }
}

