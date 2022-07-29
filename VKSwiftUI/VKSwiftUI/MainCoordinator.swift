//
//  MainCoordinator.swift
//  VKSwiftUI
//
//  Created by Stanislav on 29.07.2022.
//

import Foundation

 enum MainTab {
     case friends
     case groups
     case news
 }

 class MainCoordinator: ObservableObject {

     @Published var tab = MainTab.friends

 }
