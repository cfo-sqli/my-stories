//
//  AppDomainContainer.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

final class AppDomainContainer {
    lazy var userStoryUseCase: GetUsersUseCaseProtocol = makeGetUsersUseCase()
}

extension AppDomainContainer: UserStoryUseCaseFactory {
    func makeUserStoryRepository() -> any UserStoryRepositoryProtocol {
        makeRepository()
    }
}

extension AppDomainContainer: UserStoryRepositoryFactory {
    func makeRepository() -> UserStoryRepositoryProtocol {
        UserStoryRepository()
    }
}
