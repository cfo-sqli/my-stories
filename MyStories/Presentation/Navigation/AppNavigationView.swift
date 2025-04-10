//
//  AppNavigationView.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import SwiftUI

struct AppNavigationView: View {
    @StateObject var coordinator = AppCoordinator()

    private let domainContainer: AppDomainContainer

    init(domainContainer: AppDomainContainer) {
        self.domainContainer = domainContainer
    }

    var body: some View {
        Group {
            switch coordinator.currentPage {
            case .home:
                let viewModel = HomeViewModel(getUsersUseCase: domainContainer.userStoryUseCase)
                HomeView(viewModel: viewModel,
                         navigator: coordinator)
            case .userStories(userId: _):
                UserStoriesView(navigator: coordinator)
            }
        }
    }
}
