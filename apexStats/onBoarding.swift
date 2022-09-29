//
//  onBoarding.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/28/22.
//

import SwiftUI

struct onBoarding: View {
    @AppStorage("userState") var userState: UserState = .None
    @AppStorage("userAccount") var userAccount: String = ""
    @AppStorage("userPlatform") var userPlatform: String = ""
    @State var isSelectedPS = false
    @State var isSelectedPC = false
    @State var isSelectedX1 = false
    private var selectedKeyboard: UIKeyboardType = .default
    var selectedType: UINotificationFeedbackGenerator.FeedbackType = .success
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.black, .gray, .red]), center: .bottom, startRadius: 2, endRadius: 900)
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
                                .multilineTextAlignment(.center)
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
                        VStack {
                            Text("What is your Apex account name?")
                                .multilineTextAlignment(.center)
                                .font(.headline)
                                .padding()
                                .foregroundColor(.white)
                                .bold()
                            TextField("Account Name", text: $userAccount)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: UIScreen.main.bounds.size.width * 0.85)
                        }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 24, style: .continuous)
                            .fill(Color.black)
                            .frame(width: UIScreen.main.bounds.size.width * 0.95, height: 150)
                        VStack {
                            Text("What platform do you play on?")
                                .multilineTextAlignment(.center)
                                .font(.headline)
                                .padding()
                                .foregroundColor(.white)
                                .bold()
                            HStack {
                                Button(action: {
                                    userPlatform = "PS4"
                                    buttonSelection(selelcted: "PS")
                                }) {
                                    VStack {
                                        Image(systemName: "logo.playstation")
                                    }
                                }
                                .buttonStyle(CustomButtonStyle(buttonSelected: $isSelectedPS))
                                .padding()
                                Button(action: {
                                    userPlatform = "X1"
                                    buttonSelection(selelcted: "X1")
                                }) {
                                    VStack {
                                        Image(systemName: "logo.xbox")
                                    }
                                    
                                }
                                .buttonStyle(CustomButtonStyle(buttonSelected: $isSelectedX1))
                                .padding()
                                Button(action: {
                                    userPlatform = "PC"
                                    buttonSelection(selelcted: "PC")
                                }) {
                                    VStack {
                                        Image(systemName: "keyboard")
                                    }
                                    
                                }
                                .buttonStyle(CustomButtonStyle(buttonSelected: $isSelectedPC))
                                .padding()
                            }
                        }
                    }
                    Button(action: {
                        Task {
                            playNotificationHaptic(selectedType)
                            withAnimation {                                
                                userState = .registeredNameAndPlatform
                                
                            }
                        }

                    }, label: {
                        Text("Let's Get Started")
                    })
                    .disabled(self.userAccount.isEmpty)
                    .disabled(self.userPlatform.isEmpty)
                    .buttonStyle(LetsGetStartedButton())
                    .padding()
                }
            }
        }
    }
    func buttonSelection(selelcted: String) {
        if selelcted == "PC" {
            isSelectedPS = false
            isSelectedX1 = false
            isSelectedPC = true
        }
        else if selelcted == "PS" {
            isSelectedX1 = false
            isSelectedPC = false
            isSelectedPS = true
        }
        else if selelcted == "X1" {
            isSelectedX1 = true
            isSelectedPC = false
            isSelectedPS = false
        }
    }
    
    func playNotificationHaptic(_ type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
}

struct onBoarding_Previews: PreviewProvider {
    static var previews: some View {
        onBoarding()
    }
}


