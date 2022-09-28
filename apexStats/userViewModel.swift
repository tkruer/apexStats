//
//  userViewModel.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/28/22.
//

import Foundation

struct User: Codable, Identifiable {
    let id = UUID()
    let name: String
    let platform: String
}

class apiCall {
    func getUsers(name: String, platform: String, completion: @escaping ([User]) -> ()) {
        guard let url = URL(string: "https://api.mozambiquehe.re/bridge?auth=3ff53b20068971b9cc7c5f8824d806ec&player=tkszn_&platform=PS4") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let users = try! JSONDecoder().decode([User].self, from: data!)
            print(users)
            
            DispatchQueue.main.async {
                completion(users)
            }
        }
        .resume()
    }
}
