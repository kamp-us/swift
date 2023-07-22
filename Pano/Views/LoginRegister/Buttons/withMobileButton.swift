//
//  withMobileButton.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 22.07.2023.
//

import SwiftUI

struct withMobileButton: View {
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(systemName: "candybarphone")
                Spacer()
                Text("Continue with mobile")
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
