//
//  MyStoriesApp.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import SwiftUI

@main
struct MyStoriesApp: App {
    var body: some Scene {
        WindowGroup {
            let userStoryRepository = UserStoryRepository()
            let getUsersUseCase = GetUsersUseCase(userStoryRepository: userStoryRepository)
            let viewModel = HomeViewModel(getUsersUseCase: getUsersUseCase)
            HomeView(viewModel: viewModel, navigator: nil)
        }
    }
}
