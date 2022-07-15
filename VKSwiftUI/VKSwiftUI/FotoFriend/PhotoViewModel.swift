//
//  PhotoViewModel.swift
//  VKSwiftUI
//
//  Created by Stanislav on 15.07.2022.
//

import Foundation


class PhotoViewModel: ObservableObject {
    
    @Published var photos: [PhotoModel] = []
    let id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    public func fetch() {
        Request<Albums>().fetch(
            type: .photos,
            id: self.id
        ) { [weak self] result in
            switch result {
            case let .success(myPhotos):
                
                let items = myPhotos.map { item in
                    PhotoModel(photoName: item.sizes[0].url)
                }
                
                DispatchQueue.main.async {
                    self?.photos = items
                }
                
                
            case let .failure(error):
                print(error)
                
            }
        }
    }
    
}
