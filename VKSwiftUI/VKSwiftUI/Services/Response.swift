//
//  Response.swift
//  VKSwiftUI
//
//  Created by Stanislav on 15.07.2022.
//

import Foundation


struct Response<ItemsType: Decodable>: Decodable {
    let response: Items<ItemsType>
}

struct Items<ItemsType: Decodable>: Decodable {
    let items: [ItemsType]
    let count: Int?
}
