//
//  Session.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import Foundation


class Session {
    let id: String
    var sessionToken: String
    let userId: String
    var expires: Date
    var user: User

    init(id: String, sessionToken: String, userId: String, expires: Date, user: User) {
        self.id = id
        self.sessionToken = sessionToken
        self.userId = userId
        self.expires = expires
        self.user = user
    }

}
