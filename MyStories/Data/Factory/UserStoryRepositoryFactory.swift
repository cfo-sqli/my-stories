//
//  UserStoryRepositoryFactory.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

protocol UserStoryRepositoryFactory {
    func makeRepository() -> UserStoryRepositoryProtocol
}
