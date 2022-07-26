//
//  LikesUI.swift
//  VKSwiftUI
//
//  Created by Stanislav on 26.07.2022.
//

import SwiftUI

struct LikesUI: View {
    
    @State var isLiked: Bool = false
    @State private var picture: String = "heart"
    @State private var rotation: Double = 0
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: 60, height: 20, alignment: .bottom)
            .overlay {
                HStack {
                    Image(systemName: picture)
                        .foregroundColor(.red)
                        .rotationEffect(Angle(degrees: rotation))
                        .animation(Animation.linear, value: 0.25)
                        .onTapGesture {
                            withAnimation {
                                isLiked.toggle()
                                rotation += 360
                                if isLiked {
                                    self.picture = "heart.fill"
                                } else {
                                    self.picture = "heart"
                                }
                            }
                        }
                    Text("+1")
                        .foregroundColor(.red)
                
                }
                .opacity(1)
            }
            .opacity(0.7)
    }
}

struct LikesCounter_Previews: PreviewProvider {
    static var previews: some View {
        LikesUI()
    }
}
