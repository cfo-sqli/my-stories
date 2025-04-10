//
//  AppNavigationView.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import SwiftUI

struct AppNavigationView: View {
    @StateObject var coordinator = AppCoordinator()

    var body: some View {
        Group {
            switch coordinator.currentPage {
            case .home:
                let userStoryRepository = UserStoryRepository()
                let getUsersUseCase = GetUsersUseCase(userStoryRepository: userStoryRepository)
                let viewModel = HomeViewModel(getUsersUseCase: getUsersUseCase)
                HomeView(viewModel: viewModel,
                         navigator: coordinator)
            case .userStories(userId: _):
                UserStoriesView(navigator: coordinator)
            }
        }
    }
}
