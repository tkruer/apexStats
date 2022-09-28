//
//  Settings.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/28/22.
//

import SwiftUI

struct Settings: View {
    @AppStorage("userState") var userState: UserState = .registeredNameAndPlatform
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Button(action: {
                        withAnimation {
                            userState = .None
                        }
                    }, label: {
                        Text("Let's Get Started")
                    })
                    .padding()
                }
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
