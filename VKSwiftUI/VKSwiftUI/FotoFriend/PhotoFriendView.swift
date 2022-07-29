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
    
    init(viewModel: PhotoViewModel, id: Int) {
        self.id = id
        self.viewModel = viewModel
        viewModel.fetch()
        

    }
    
    var body: some View {
        
            ScrollView(.vertical) {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 300))]) {
                    ForEach(0..<viewModel.photos.count, id: \.self) { index in
                        KFImage(URL(string: viewModel.photos[index].photoName))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100, alignment: .leading)
                            .clipped()
                            .overlay(alignment: .bottom){
                                LikesUI()}
                    }
                }
              
                .onAppear(perform: viewModel.fetch)
            }
        }
}

struct PhotosFriendView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosFriendView(viewModel: PhotoViewModel(id: 0), id: 1)
    }
}
