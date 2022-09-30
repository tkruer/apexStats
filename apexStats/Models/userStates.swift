//
//  userStates.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/28/22.
//

import Foundation


enum UserState: Int, Identifiable, CaseIterable {
    case None
    case registeredNameAndPlatform
    case hasNotRegisteredNameAndPlatform
    var id: Int { rawValue }
}
