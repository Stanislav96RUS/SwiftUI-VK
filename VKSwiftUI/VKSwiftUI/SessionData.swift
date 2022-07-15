//
//  SessionData.swift
//  VKSwiftUI
//
//  Created by Stanislav on 15.07.2022.
//

import Foundation

final class SessionData  {
    var token: String = ""
    var userId: Int = 0
    
    static let data = SessionData()
    
    private init() {}
}
