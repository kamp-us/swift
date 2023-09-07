//
//  Constants.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 15.08.2023.
//

import Foundation
import SwiftUI


class UserDefaults: ObservableObject {
    @AppStorage("IS_USER_LOGIN") var isUserLogin: Bool = false
    @AppStorage("IS_THEME_DARK") var isThemeDark: Bool = false
    @AppStorage("isPreviewShows") var isPreview = true
}


