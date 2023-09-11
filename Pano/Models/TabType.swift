//
//  TabType.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 11.09.2023.
//

import Foundation


enum TabType {
    case home
    case addPost
    case profile
    
    var systemImageName: String {
        switch self {
        case .home:
            return "house.fill"
        case .addPost:
            return "plus.app.fill"
        case .profile:
            return "person.fill"
        }
    }
    
    var text: String {
        switch self {
        case .home:
            return "Home"
        case .addPost:
            return "Add Post"
        case .profile:
            return "Profile"
        }

    }
    
}
