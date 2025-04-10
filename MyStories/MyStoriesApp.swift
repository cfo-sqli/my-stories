//
//  MyStoriesApp.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import SwiftUI

@main
struct MyStoriesApp: App {

    let appContainer = AppDIContainer()

    var body: some Scene {
        WindowGroup {
            AppNavigationView(domainContainer: appContainer.domainContainer)
        }
    }
}
