//
//  Home.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/28/22.
//

import SwiftUI

struct Home: View {
    
    @State var users: [User] = []
    
    var body: some View {
        List(users) { user in
            Text(users.global.uid)
                .font(.headline)
            Text(users.global.name)
                .font(.subheadline)
                }
                .onAppear {
                    apiCall().getUsers { (users) in
                        self.users = users
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
