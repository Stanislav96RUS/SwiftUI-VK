//
//  FriendsView.swift
//  VKSwiftUI
//
//  Created by Stanislav on 12.07.2022.
//

import SwiftUI

struct FriendsView: View {
   
    @State private var friends: [Friend] = [
        Friend(name: "Dmitriy", imageName: "avatar"),
        Friend(name: "Igor", imageName: "avatar"),
        Friend(name: "Stan", imageName: "avatar"),
        Friend(name: "Alex", imageName: "avatar")
    ]
    
    var body: some View {
        
        List(friends.sorted(by: { $0.name < $1.name })) { friend in
            NavigationLink(destination: FotoFriendView(friend: friend)) {
                FriendCellView(friend: friend)
            }
            
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Друзья", displayMode: .inline)
        //.navigationTitle("Cities")
            
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}

