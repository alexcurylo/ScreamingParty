//
//  RawRepresentable-Equatable.swift
//  ScreamingParty
//
//  Created by Alex Curylo on 2016-07-10.
//  Copyright © 2016 Trollwerks Inc. All rights reserved.
//
//  Source:
//  https://gist.github.com/apocolipse/1b3f5c1ba70148b5d0d62af8a93be438

import Foundation

typealias RawEquatable = protocol<RawRepresentable, Equatable>

func ==<U: Equatable, T: RawEquatable where T.RawValue == U>(lhs: U, rhs: T) -> Bool {
    return lhs == rhs.rawValue
}

func !=<U: Equatable, T: RawEquatable where T.RawValue == U>(lhs: U, rhs: T) -> Bool {
    return lhs != rhs.rawValue
}
