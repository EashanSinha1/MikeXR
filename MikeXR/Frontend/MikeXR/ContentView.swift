//
//  ContentView.swift
//  MikeXR
//
//  Created by Eashan Sinha on 3/15/24.
//

import SwiftUI
import RealityKit
import RealityKitContent


struct ContentView: View {

    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShown = false
    @State private var showSignInRegister = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace

    var body: some View {
        NavigationStack {
            HStack(alignment: .center, spacing: 20) {
                VStack(alignment: .center, spacing: 20) {
                    Text("MikeXR")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 300)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Button(action: {
                            // Action for getting started
                        }) {
                            Text("Get Started")
                                .fontWeight(.semibold)
                                .padding(.vertical, 10)
                                .frame(width: 150)
                                .foregroundColor(.white)
                        }
                        .background(.blue)
                        .cornerRadius(20)

                        Button(action: {
                            // Action for signing in
                            showSignInRegister = true
                        }) {
                            Text("Sign In")
                                .fontWeight(.semibold)
                                .padding(.vertical, 10)
                                .frame(width: 150)
                                .foregroundColor(.white)
                                .navigationDestination(isPresented: $showSignInRegister) {
                                                            SignInRegisterView()
                                                        }
                        }
                        .padding(.top, 10)
                    }
                    .padding(.top, 60)
                    
                    Spacer()
                }
                .padding(.leading, 100)
                
                Spacer()
                
                // Placeholder for the image
                Image("PhotoSVG")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 800, height: 800)
                    .padding(.trailing, 100)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
