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

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace

    var body: some View {
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
                    }) {
                        Text("Sign In")
                            .fontWeight(.semibold)
                            .padding(.vertical, 10)
                            .frame(width: 150)
                            .foregroundColor(.white)
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
                .frame(width: 800, height: 800) // Specify your desired size
                .padding(.trailing, 100)

        }
        // To ensure the HStack uses the full width of the window/screen
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
