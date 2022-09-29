//
//  userViewModel.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/28/22.
//

import Foundation



struct User: Codable, Identifiable {
    let id = UUID()
    var global: [Global]?
    struct Global: Codable, Identifiable {
        let id = UUID()
        var name: String?
        var uid: Int?
    }
}


class apiCall {
    func getUsers(completion: @escaping ([User]) -> ()) {
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
