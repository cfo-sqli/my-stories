//
//  UserResponseDTO.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import Foundation

struct UserResponseDTO: Decodable {
    let pages: [UserPageDTO]
}
