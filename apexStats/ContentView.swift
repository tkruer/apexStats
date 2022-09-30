//
//  ContentView.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/28/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Search()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            Profile()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "gear")
            }
         
        }
        .accentColor(.red)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
