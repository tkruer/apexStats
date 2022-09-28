//
//  onBoarding.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/28/22.
//

import SwiftUI

struct onBoarding: View {
    var onboardingdata = onboardingData.dataOnboarding
    @State var selection = 0
    @AppStorage("userState") var userState: UserState = .None
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.black, .red]), center: .bottom, startRadius: 2, endRadius: 800)
                .ignoresSafeArea()
            LazyVStack {
                LazyVStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 24, style: .continuous)
                            .fill(Color.black)
                            .frame(width: UIScreen.main.bounds.size.width * 0.9, height: 200)
                        Text("apexStats")
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct onBoarding_Previews: PreviewProvider {
    static var previews: some View {
        onBoarding()
    }
}

