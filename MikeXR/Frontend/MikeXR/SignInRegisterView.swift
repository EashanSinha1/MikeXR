//
//  SignInRegisterView.swift
//  MikeXR
//
//  Created by Eashan Sinha on 3/15/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SignInRegisterView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var registrationEmail = ""
    @State private var registrationPassword = ""
    @State private var registrationConfirmPassword = ""

    var body: some View {
        HStack(spacing: 20) {
            // Registration side
            VStack(spacing: 10) {
                Text("Register")
                    .font(.title)
                    .fontWeight(.bold)

                TextField("Email", text: $registrationEmail)
                    .textFieldStyle(.roundedBorder)
                    .autocapitalization(.none)

                SecureField("Password", text: $registrationPassword)
                    .textFieldStyle(.roundedBorder)

                SecureField("Confirm Password", text: $registrationConfirmPassword)
                    .textFieldStyle(.roundedBorder)

                Button(action: {
                    // Action for getting started
                }) {
                    Text("Register")
                        .fontWeight(.semibold)
                        .padding(.vertical, 10)
                        .frame(width: 150)
                        .foregroundColor(.white)
                }
                .background(.blue)
                .cornerRadius(20)
            
            }
            .padding()
            .frame(maxWidth: .infinity)

            // Sign-in side
            VStack(spacing: 10) {
                Text("Sign In")
                    .font(.title)
                    .fontWeight(.bold)

                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .autocapitalization(.none)

                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)

                Button(action: {
                    // Action for signing in
                }) {
                    Text("Sign In")
                        .fontWeight(.semibold)
                        .padding(.vertical, 10)
                        .frame(width: 150)
                        .foregroundColor(.white)

                }
            }
            .padding()
            .frame(maxWidth: .infinity)
        }
    }
}

struct SignInRegisterView_Previews: PreviewProvider {
    static var previews: some View {
        SignInRegisterView()
    }
}

