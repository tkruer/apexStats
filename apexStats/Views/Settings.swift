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
        Form {
            Group {
                Text("asdf")
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
