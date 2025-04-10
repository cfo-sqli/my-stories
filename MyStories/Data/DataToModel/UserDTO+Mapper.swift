//
//  UserDTO+Mapper.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import Foundation

extension UserDTO: Mapper {
    typealias InputType = Self
    typealias OutputType = User

    static func convert(from entity: InputType) -> OutputType {
        User(id: entity.id,
             name: entity.name,
             profilePictureURL: URL(string: entity.profilePictureURL ?? ""))
    }
}
