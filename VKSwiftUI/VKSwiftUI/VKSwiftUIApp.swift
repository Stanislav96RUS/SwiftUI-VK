//
//  VKSwiftUIApp.swift
//  VKSwiftUI
//
//  Created by Stanislav on 06.07.2022.
//

import SwiftUI

@main
struct VKSwiftUIApp: App {

//    @State var isAuthorized = false
//    fileprivate static let tokenSavedPublisher = NotificationCenter.default.publisher(for: Notification.Name("vkTokenSaved"))
//    var body: some Scene {
//        WindowGroup {
//            if isAuthorized {
//                ContainerView()
//            } else {
//                VKLoginWebView().onReceive(VKSwiftUIApp.tokenSavedPublisher) { _ in
//                    self.isAuthorized.toggle()
//                }
//            }
//        }
//    }
//}
    @State private var showUserScreens = false
    
    var body: some Scene {
        WindowGroup {
<<<<<<< Updated upstream
            ContentView()
=======
            if showUserScreens {
                ContainerView()
            } else {
                VKLoginWebView()
                    .onReceive(
                        NotificationCenter.default.publisher(for: NSNotification.Name("vkTokenSaved"))
                    ) { _ in
                        print()
                        showUserScreens = true
                    }
            }
                
            
>>>>>>> Stashed changes
        }
    }
}
