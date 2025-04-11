//
//  GetUsersUseCaseFactory.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

protocol UserStoryUseCaseFactory {
    func makeUserStoryRepository() -> UserStoryRepositoryProtocol
    func makeGetUsersUseCase() -> GetUsersUseCaseProtocol
}

extension UserStoryUseCaseFactory {
    func makeGetUsersUseCase() -> GetUsersUseCaseProtocol {
        let repository = makeUserStoryRepository()
        return GetUsersUseCase(userStoryRepository: repository)
    }
}


