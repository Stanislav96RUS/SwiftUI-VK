//
//  MainView.swift
//  VKSwiftUI
//
//  Created by Stanislav on 12.07.2022.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedView = 1
    
    var body: some View {
        TabView(selection: $selectedView){
            
            FriendsView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Друзья")
                }.tag(1)
            
            GroupsView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Группы")
                }.tag(2)
            
            NewsView()
                .tabItem {
                    Image(systemName: "newspaper.fill")
                    Text("Новости")
                }.tag(3)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
