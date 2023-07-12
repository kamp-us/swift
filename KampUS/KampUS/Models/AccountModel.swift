//
//  AccountModel.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 12.07.2023.
//

import Foundation

class Account {
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
    
    init(id: String, userId: String, type: String, provider: String, providerAccountId: String, refresh_token: String? = nil, refresh_token_expires_in: Int? = nil, access_token: String, expires_at: Int? = nil, token_type: String? = nil, scope: String? = nil, id_token: String? = nil, session_state: String? = nil, user: User) {
        self.id = id
        self.userId = userId
        self.type = type
        self.provider = provider
        self.providerAccountId = providerAccountId
        self.refresh_token = refresh_token
        self.refresh_token_expires_in = refresh_token_expires_in
        self.access_token = access_token
        self.expires_at = expires_at
        self.token_type = token_type
        self.scope = scope
        self.id_token = id_token
        self.session_state = session_state
        self.user = user
    }
    
    
}
