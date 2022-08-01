//
//  FotoFriend.swift
//  VKSwiftUI
//
//  Created by Stanislav on 12.07.2022.
//

import SwiftUI
import Kingfisher

struct PhotosFriendView: View {
    
    var id: Int
    
    @ObservedObject var viewModel: PhotoViewModel
    
    
    let columns = [
    GridItem(.flexible(minimum: 0, maximum: .infinity)),
    GridItem(.flexible(minimum: 0, maximum: .infinity)),
    GridItem(.flexible(minimum: 0, maximum: .infinity)),]

    
    init(viewModel: PhotoViewModel, id: Int) {
        self.id = id
        self.viewModel = viewModel
        viewModel.fetch()
    }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                LazyVGrid(columns: columns, alignment: .center, spacing: 16) {
                    ForEach(0..<viewModel.photos.count, id: \.self) { index in
                        KFImage(URL(string: viewModel.photos[index].photoName))
                            .frame(height: geometry.size.width/2)
                            .clipped()
                            .overlay(alignment: .bottom){
                            LikesUI()}
                        }
                        
                    }
                }
                
            }
        .onAppear(perform: viewModel.fetch)
    }
}

struct PhotosFriendView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosFriendView(viewModel: PhotoViewModel(id: 0), id: 1)
    }
}
