//
//  UserStoryRepositoryProtocol.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import Foundation
import Combine

protocol UserStoryRepositoryProtocol {
    func getUsers() -> AnyPublisher<[User], Never>
}
