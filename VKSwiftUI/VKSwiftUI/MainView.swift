//
//  MainView.swift
//  VKSwiftUI
//
//  Created by Stanislav on 12.07.2022.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedView = 1
    
    private var titleName = ["Друзья", "Группы", "Новости"]
    
    var body: some View {
        TabView(selection: $selectedView){
            
            FriendsView(viewModel: FriendViewModel())
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Друзья")
                }.tag(1)
            
            GroupsView(viewModel: GroupViewModel())
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
        .navigationTitle(titleName[selectedView - 1])
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
