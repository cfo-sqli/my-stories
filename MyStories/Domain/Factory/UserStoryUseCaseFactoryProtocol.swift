//
//  GetUsersUseCaseFactory.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

protocol UserStoryUseCaseFactoryProtocol {
    func makeUserStoryRepository() -> UserStoryRepositoryProtocol
    
    func makeGetUsersUseCase() -> GetUsersUseCaseProtocol
}

extension UserStoryUseCaseFactoryProtocol {
    func makeGetUsersUseCase() -> GetUsersUseCaseProtocol {
        let repository = makeUserStoryRepository()
        return GetUsersUseCase(userStoryRepository: repository)
    }
}


