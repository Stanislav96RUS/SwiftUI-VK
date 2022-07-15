//
//  RequestService.swift
//  VKSwiftUI
//
//  Created by Stanislav on 15.07.2022.
//

import Foundation

enum requestType {
    case friends
    case groups
    case photos
    case feed
}

protocol RequestService {
    associatedtype Element
    func fetch(type: requestType, str: String?, id: Int?, complition: @escaping (Swift.Result<Element, Error>) -> Void)
}
