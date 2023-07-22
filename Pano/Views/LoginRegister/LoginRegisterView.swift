//
//  LoginRegisterView.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 18.07.2023.
//

import SwiftUI

struct LoginRegisterView: View {
    @AppStorage("IS_USER_LOGIN") var isUserLogin: Bool = false
    @State private var isApprove: Bool = false
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Create an account to continue")
                .font(.system(size: 20, weight: .bold))
                .padding(.vertical)
            Text("By continuing, you agree to our User Agreement and acknowledge that you understand the Privacy Policy.")
                .font(.system(size: 14, weight: .thin))
                .padding(.bottom)
            
            withMobileButton()
            withGoogleButton()
            withAppleButton()
            withEmailButton()
                .padding(.bottom)
            
            HStack {
                if isApprove {
                    Button {
                        isApprove.toggle()
                    } label: {
                        Image(systemName: "checkmark.square")
                    }

                } else {
                    Button {
                        isApprove.toggle()
                    } label: {
                        Image(systemName: "square")
                    }

                }
                Text("I agree to get emails about cool stuff on Pano")
            }
            .font(.system(size: 16, weight: .thin))
            .padding(.bottom)
            
            HStack {
                Text("Already have an account?")
                Button {
                    
                } label: {
                    Text("Log in")
                }

            }
            
        }
    }
}
