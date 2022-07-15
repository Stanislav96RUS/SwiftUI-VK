//
//  GroupViewModel.swift
//  VKSwiftUI
//
//  Created by Stanislav on 15.07.2022.
//

import Foundation

class GroupViewModel: ObservableObject {
    
    @Published var groups: [GroupModel] = []
    
    public func fetch() {
        Request<GroupData>().fetch(
            type: .groups
        ) { [weak self] result in
            switch result {
            case let .success(myGroups):
                
                let items = myGroups.map { item in
                    GroupModel(
                        name: item.name,
                        avatar: item.photo
                    )
                }
                DispatchQueue.main.async {
                    self?.groups = items
                }
                
                
            case let .failure(error):
                print(error)
                
            }
        }
    }
    
}
