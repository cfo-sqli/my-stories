//
//  AppDomainContainer.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

final class AppDomainContainer {
    private var userStoryUseCaseFactory: UserStoryUseCaseFactoryProtocol {
        return UserStoryUseCaseDIContainer()
    }

    var userStoryUseCase: GetUsersUseCaseProtocol {
        userStoryUseCaseFactory.makeGetUsersUseCase()
    }
}
