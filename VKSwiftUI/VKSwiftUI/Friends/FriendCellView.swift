//
//  FriendCellView.swift
//  VKSwiftUI
//
//  Created by Stanislav on 12.07.2022.
//

import SwiftUI
import Kingfisher

struct FriendCellView: View {
    
    let name: String
    let avatar: String
    
    var body: some View {
        HStack {
            AvatarOfCell {
                KFImage(URL(string: avatar))
            }
            
            Text(name)
                .font(.title)
                .padding(.leading, 20)
                .lineLimit(2)
                

        }
        .padding()
    }
}

struct FriendsCellView_Previews: PreviewProvider {
    static var previews: some View {
        FriendCellView(name: "noname", avatar: "nophoto")
    }
}
