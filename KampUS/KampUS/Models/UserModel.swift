//
//  UserModel.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 11.07.2023.
//

import Foundation

struct User: Identifiable, Hashable {
    var id = UUID()
    var userName: String
}
