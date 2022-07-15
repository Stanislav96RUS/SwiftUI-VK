//
//  GroupCellView.swift
//  VKSwiftUI
//
//  Created by Stanislav on 12.07.2022.
//

import SwiftUI
import Kingfisher

struct GroupCellView: View {
    
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
                .lineLimit(1)
                .layoutPriority(1)
        }
        .padding()
    }
}

struct GroupCellView_Previews: PreviewProvider {
    static var previews: some View {
        GroupCellView(name: "noname", avatar: "nophoto")
    }
}
