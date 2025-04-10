//
//  UserStoryRepositoryFactory.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

protocol UserStoryRepositoryFactoryProtocol {
    func makeRepository() -> UserStoryRepositoryProtocol
}

extension UserStoryRepositoryFactoryProtocol {
    func makeRepository() -> UserStoryRepositoryProtocol {
        UserStoryRepository()
    }
}
