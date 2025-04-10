//
//  Mapper.swift
//  MyStories
//
//  Created by Charlie Fougeray on 10/04/2025.
//

import Foundation

protocol Mapper {
    associatedtype InputType
    associatedtype OutputType

    static func convert(from entity: InputType) -> OutputType
}
