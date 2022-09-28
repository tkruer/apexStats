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
    @State private var accountName: String = ""
    private var selectedKeyboard: UIKeyboardType = .default
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.black, .red]), center: .bottom, startRadius: 2, endRadius: 1000)
                    .ignoresSafeArea()
            ScrollView {
                LazyVStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 24, style: .continuous)
                            .fill(Color.black)
                            .frame(width: UIScreen.main.bounds.size.width * 0.95, height: 250)
                        VStack {
                            Text("apexStats")
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                            Text("All your Apex statistics in the click of a button")
                                .padding()
                                .font(.title3)
                                .bold()
                                .foregroundColor(.white)
                        }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 24, style: .continuous)
                            .fill(Color.black)
                            .frame(width: UIScreen.main.bounds.size.width * 0.95, height: 150)
                        VStack(alignment: .leading) {
                            Text("Account Name")
                                .font(.headline)
                                .padding()
                                .foregroundColor(.white)
                                .bold()
                            TextField("Account Name", text: $accountName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
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

