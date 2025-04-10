//
//  UserStoryUseCaseDIContainer.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

class UserStoryUseCaseDIContainer: UserStoryUseCaseFactoryProtocol, UserStoryRepositoryFactoryProtocol {
    func makeUserStoryRepository() -> any UserStoryRepositoryProtocol {
        makeRepository()
    }
}
