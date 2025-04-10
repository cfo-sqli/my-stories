//
//  UserStoryRepository.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import Foundation
import Combine

struct UserStoryRepository: UserStoryRepositoryProtocol {
    func getUsers() -> AnyPublisher<[User], Never> {
        return Just(fetchUsers())
            .eraseToAnyPublisher()
    }

    private func fetchUsers() -> [User] {
        guard let fileURL = Bundle.main.url(forResource: "users", withExtension: "json")
        else { return [] }

        do {
            let data = try Data(contentsOf: fileURL)
            let decoder = JSONDecoder()
            let response = try decoder.decode(UserResponseDTO.self, from: data)

            return response.pages
                .flatMap { $0.users }
                .map { UserDTO.convert(from: $0) }
        } catch {
            return []
        }
    }
}
