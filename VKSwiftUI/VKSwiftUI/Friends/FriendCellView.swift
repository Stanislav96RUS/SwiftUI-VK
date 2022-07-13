//
//  FriendCellView.swift
//  VKSwiftUI
//
//  Created by Stanislav on 12.07.2022.
//

import SwiftUI


struct FriendCellView: View {
    
    let friend: Friend
    
    var body: some View {
        
        HStack {
            Image(friend.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80, alignment: .leading)
            Text("\(friend.name)")
        }
    }
}

