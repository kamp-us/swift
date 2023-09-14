//
//  Session.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import Foundation


struct Session: Codable, Identifiable  {
    let id: String
    var sessionToken: String
    let userId: String
    var expires: Date
    var user: User

}
