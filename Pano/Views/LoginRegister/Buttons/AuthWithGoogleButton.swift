//
//  withGoogleButton.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 22.07.2023.
//

import SwiftUI

struct AuthWithGoogleButton: View {
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(systemName: "volleyball.fill")
                Spacer()
                Text("Continue with Google")
                Spacer()
            }
            .font(.system(size: 20))
            .padding(8)
            .padding(.horizontal)
        }
        .frame(width: UIScreen.main.bounds.width - 100)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.primary, lineWidth: 1)
        }
    }
}
