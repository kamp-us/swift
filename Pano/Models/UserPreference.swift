//
//  UserPreference.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import Foundation

class UserPreference {
    var theme: Theme
    var user: User
    var userID: String

    let createdAt: Date
    let updatedAt: Date
    let deletedAt: Date

    init(theme: Theme, user: User, userID: String, createdAt: Date, updatedAt: Date, deletedAt: Date) {
        self.theme = theme
        self.user = user
        self.userID = userID
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }

}
