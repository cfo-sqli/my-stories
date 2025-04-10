//
//  HomeViewModel.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published private(set) var storiesState = UserStoryListState(users: [])

    private let getUsersUseCase: GetUsersUseCaseProtocol

    private var cancellables = Set<AnyCancellable>()

    init(getUsersUseCase: GetUsersUseCaseProtocol) {
        self.getUsersUseCase = getUsersUseCase
    }

    func loadUserStories() {
        getUsersUseCase.invoke()
            .receive(on: DispatchQueue.main)
            .sink { [weak self] users in
                self?.storiesState = UserStoryListState.convert(from: users)
            }
            .store(in: &cancellables)
    }
}
