//
//  GetUsersUseCase.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import Foundation
import Combine

protocol GetUsersUseCaseProtocol : AnyObject {
    func invoke() -> AnyPublisher<[User], Never>
}

final class GetUsersUseCase: GetUsersUseCaseProtocol {
    private let userStoryRepository: UserStoryRepositoryProtocol

    init(userStoryRepository: UserStoryRepositoryProtocol) {
        self.userStoryRepository = userStoryRepository
    }

    func invoke() -> AnyPublisher<[User], Never> {
        userStoryRepository.getUsers()
    }
}
