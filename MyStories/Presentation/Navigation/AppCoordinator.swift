//
//  AppCoordinator.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import Foundation
import Combine

class AppCoordinator: ObservableObject {
    @Published var currentPage: Page = .home

    enum Page {
        case home
        case userStories(userId: Int)
    }
}

extension AppCoordinator: HomeNavigator {
    func goToUserStories(userId: Int) {
        currentPage = .userStories(userId: userId)
    }
}

extension AppCoordinator: UserStoriesNavigator {
    func quitUserStories() {
        currentPage = .home
    }
}
