//
//  UserDTO.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import Foundation

struct UserDTO: Decodable {
    let id: Int
    let name: String
    let profilePictureURL: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case profilePictureURL = "profile_picture_url"
    }
}
