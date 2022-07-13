//
//  ContainerView.swift
//  VKSwiftUI
//
//  Created by Stanislav on 12.07.2022.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var showFriendsScreen = false
  
    var body: some View {
    
        NavigationView {
            HStack {
                
                AuthView(isUserLoggedIn: $showFriendsScreen)
                NavigationLink(destination: MainView(), isActive: $showFriendsScreen) {
                    EmptyView() //Безразмерная заглушка вьюшка
                }
                
                
                
            }
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
