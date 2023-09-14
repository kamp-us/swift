//
//  Constants.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 15.08.2023.
//

import Foundation
import SwiftUI


class UserDefaults: ObservableObject {
    @AppStorage("isUserLogin") var isUserLogin: Bool = false
    @AppStorage("isThemeDark") var isThemeDark: Bool = false
    @AppStorage("isPreviewShows") var isPreview = true
}
