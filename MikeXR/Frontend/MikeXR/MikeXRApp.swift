//
//  MikeXRApp.swift
//  MikeXR
//
//  Created by Eashan Sinha on 3/15/24.
//

import SwiftUI

@main
struct MikeXRApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
