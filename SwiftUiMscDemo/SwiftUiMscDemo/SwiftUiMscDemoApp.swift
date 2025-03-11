//
//  SwiftUiMscDemoApp.swift
//  SwiftUiMscDemo
//
//  Created by SATABHISHA ROY on 19/02/25.
//

import SwiftUI

@available(iOS 17.0, *)
@main
struct SwiftUiMscDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.environment(AppState())
    }
}
