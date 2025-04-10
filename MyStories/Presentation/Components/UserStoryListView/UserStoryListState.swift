//
//  UserStoryListState.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import Foundation

struct UserStoryState {
    let userId: Int
    let userName: String
    let pictureURL: URL?
}

extension UserStoryState: Mapper {
    typealias InputType = User
    typealias OutputType = Self

    static func convert(from entity: InputType) -> OutputType {
        UserStoryState(userId: entity.id,
                       userName: entity.name,
                       pictureURL: entity.profilePictureURL)
    }
}

struct UserStoryListState {
    let users: [UserStoryState]
}

extension UserStoryListState: Mapper {
    typealias InputType = [User]
    typealias OutputType = Self

    static func convert(from entity: InputType) -> OutputType {
        let users = entity.map { UserStoryState.convert(from: $0) }
        return UserStoryListState(users: users)
    }
}

// MARK: Mocks

#if DEBUG
extension UserStoryListState {
    static func mock() -> UserStoryListState {
        let users = (1...10).map {
            UserStoryState(userId: $0, userName: "User \($0)", pictureURL: URL(string: "https://i.pravatar.cc/300"))
        }
        return UserStoryListState(users: users)
    }
}
#endif
