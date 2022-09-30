//
//  Search.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/30/22.
//

import SwiftUI

struct Search: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.gray, .black]), center: .bottom, startRadius: 2, endRadius: 900)
                    .ignoresSafeArea()
            ScrollView {
                
            }
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
