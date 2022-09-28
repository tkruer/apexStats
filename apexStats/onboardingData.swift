//
//  onboardingData.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/28/22.
//

import Foundation


struct onboardingData: Identifiable {
    var id = UUID()
    var cardNumber: Int
    var title: String
    var description: String
    var imageName: String
}

extension onboardingData {
    static var dataOnboarding: [onboardingData] {
        [
            onboardingData(cardNumber: 1, title: "All your Apex statistics in the click of a button", description: "Let's Get Started", imageName: "someimage")
            ]
    }
}
