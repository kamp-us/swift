//
//  Account.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import Foundation

struct Account {
    let id: String
    let userId: String
    var type: String
    let provider: String
    let providerAccountId: String
    var refresh_token: String?
    var refresh_token_expires_in: Int?
    var access_token: String
    var expires_at: Int?
    var token_type: String?
    var scope: String?
    var id_token: String?
    var session_state: String?

    var user: User


}
