//
//  ContainerView.swift
//  VkontakteUI
//
//  Created by Andrey Pozdnyakov on 13.04.2023.
//

import SwiftUI


struct ContainerView: View {
    
    @State private var shouldShowMainView: Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                LoginScreenView(isUserLoggedIn: $shouldShowMainView)
                //MARK: - NAVIGATION LINKS
                NavigationLink(destination: FriendsScreenView(), isActive:
                                $shouldShowMainView) {
                    EmptyView()
                }
            }
        }
    }
}
