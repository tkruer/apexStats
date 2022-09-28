//
//  apexStatsApp.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/28/22.
//

import SwiftUI

@main
struct apexStatsApp: App {
    @AppStorage("userState") var userState: UserState = .None
    var body: some Scene {
        WindowGroup {
            if userState == .registeredNameAndPlatform {
                ContentView()
            }
            if userState == .hasNotRegisteredNameAndPlatform {
                onBoarding()
            }
            if userState == .None {
                onBoarding()
            }
        }
    }
}
