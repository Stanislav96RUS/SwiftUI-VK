//
//  AvatarOfCell.swift
//  VKSwiftUI
//
//  Created by Stanislav on 15.07.2022.
//

import SwiftUI
import Kingfisher

struct AvatarOfCell: View {
    var content: KFImage
    private var size = 90.0
    
    @State private var isPressed: Bool = false
   
    init(@ViewBuilder content: () -> KFImage) {
        self.content = content()
        
    }
    
    var body: some View {
        content
        
            .resizable()
            .frame(width: size, height: size)
            .cornerRadius(size / 2)
            .clipped()
            .setShadow(shadowColor: .purple, shadowRadius: 10.0)
            .scaleEffect(isPressed ? 1.2 : 1)
            .animation(.spring(response: 0.8, dampingFraction: 0.1), value: isPressed)
            .onTapGesture {
                        isPressed.toggle()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        isPressed.toggle()
                        }
            }
        
    }
    
}

struct CustomShadow: ViewModifier {
    let shadowColor: Color
    let shadowRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .background(
                Circle()
                    .fill(Color.white)
                    .shadow(
                        color: shadowColor,
                        radius: shadowRadius
                    )
            )
    }
}

extension View {
    func setShadow(shadowColor: Color, shadowRadius: CGFloat) -> some View {
        return self.modifier(CustomShadow(shadowColor: shadowColor, shadowRadius: shadowRadius))
    }
}
