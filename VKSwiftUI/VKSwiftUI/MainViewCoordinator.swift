//
//  MainViewCoordinator.swift
//  VKSwiftUI
//
//  Created by Stanislav on 29.07.2022.
//

import SwiftUI

 struct MainViewCoordinator: View {

     @ObservedObject var coordinator: MainCoordinator

     var body: some View {
         TabView(selection: $coordinator.tab) {
             NavigationView {
                 FriendsView(viewModel: FriendViewModel())
             }
             .tabItem {
                 Image(systemName: "person.fill")
                 Text("Друзья")
             }
             .tag(MainTab.friends)
             NavigationView {
                 GroupsView(viewModel: GroupViewModel())
             }
             .tabItem {
                 Image(systemName: "person.3.fill")
                 Text("Группы")
             }
             .tag(MainTab.groups)
             NewsView()
                 .tabItem {
                     Image(systemName: "newspaper.fill")
                     Text("Новости")
                 }
                 .tag(MainTab.news)
         }
     }
 }
