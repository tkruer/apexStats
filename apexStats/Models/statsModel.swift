//
//  statsModel.swift
//  apexStats
//
//  Created by Tyler Kruer on 11/4/22.
//

import Foundation
import Combine



class GetStats: ObservableObject {
    
    @Published private(set) var version: VersionStatus? = nil
    @Published private(set) var convert: ConvertStatus? = nil
    @Published private(set) var origin: OriginStatus? = nil
    @Published private(set) var server: ServerStatus? = nil
    @Published private(set) var news: NewsStatus? = nil
    @Published private(set) var crafting: CraftingStatus? = nil
    @Published private(set) var store: StoreStatus? = nil
    @Published private(set) var predator: PredatorStatus? = nil
    @Published private(set) var maps: MapsStatus? = nil
    @Published private(set) var stats: StatsStatus? = nil
    
    private var cancellable: Set<AnyCancellable> = []
    
    init(){
     //   retrieveData()
    }
    
    func getVersion() {
        guard let url = URL(string: "https://tkszn.npkn.net/apex-stats/version") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap({$0.data})
            .decode(type: VersionStatus.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {print($0)}, receiveValue: {self.version = $0})
            .store(in: &cancellable)
    }
    
    func convertData(playerName: String, playerPlatform: String) {
        guard let url = URL(string: "https://tkszn.npkn.net/apex-stats/convert") else {
            fatalError("Invalid URL")
        }
        let parameters = """
        {
            "player_name": "\(playerName)",
            "player_platform": "\(playerPlatform)"
        }
        """
        let postData = parameters.data(using: .utf8)
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        request.httpBody = postData
        
        URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap({$0.data})
            .decode(type: ConvertStatus.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {print($0)}, receiveValue: {self.convert = $0})
            .store(in: &cancellable)
    }
    
    func getOrigin(playerName: String) {
        guard let url = URL(string: "https://tkszn.npkn.net/apex-stats/origin") else {
            fatalError("Invalid URL")
        }
        let parameters = """
        {
            "player_name": "\(playerName)"
        }
        """
        let postData = parameters.data(using: .utf8)
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        request.httpBody = postData
        
        URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap({$0.data})
            .decode(type: OriginStatus.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {print($0)}, receiveValue: {self.origin = $0})
            .store(in: &cancellable)
    }
    
    func getServers() {
        guard let url = URL(string: "https://tkszn.npkn.net/apex-stats/servers") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap({$0.data})
            .decode(type: ServerStatus.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {print($0)}, receiveValue: {self.server = $0})
            .store(in: &cancellable)
    }
    
    func getNews() {
        guard let url = URL(string: "https://tkszn.npkn.net/apex-stats/news") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap({$0.data})
            .decode(type: NewsStatus.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {print($0)}, receiveValue: {self.news = $0})
            .store(in: &cancellable)
    }
    
    func getCrafting() {
        guard let url = URL(string: "https://tkszn.npkn.net/apex-stats/crafting") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap({$0.data})
            .decode(type: CraftingStatus.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {print($0)}, receiveValue: {self.crafting = $0})
            .store(in: &cancellable)
    }
    
    func getStore() {
        guard let url = URL(string: "https://tkszn.npkn.net/apex-stats/store") else {
            fatalError("Invalid URL")
        }
        URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap({$0.data})
            .decode(type: StoreStatus.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {print($0)}, receiveValue: {self.store = $0})
            .store(in: &cancellable)
    }
    
    func getPredator() {
        guard let url = URL(string: "https://tkszn.npkn.net/apex-stats/predator") else {
            fatalError("Invalid URL")
        }
        URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap({$0.data})
            .decode(type: PredatorStatus.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {print($0)}, receiveValue: {self.predator = $0})
            .store(in: &cancellable)
    }
    
    func getMaps() {
        guard let url = URL(string: "https://tkszn.npkn.net/apex-stats/maps") else {
            fatalError("Invalid URL")
        }
        URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap({$0.data})
            .decode(type: MapsStatus.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {print($0)}, receiveValue: {self.maps = $0})
            .store(in: &cancellable)
    }
    
    func getStats(playerName: String, playerPlatform: String) {
        guard let url = URL(string: "https://tkszn.npkn.net/apex-stats/stats") else {
            fatalError("Invalid URL")
        }
        let parameters = """
        {
            "player_name": "\(playerName)",
            "player_platform": "\(playerPlatform)"
        }
        """
        let postData = parameters.data(using: .utf8)
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        request.httpBody = postData
        
        URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap({$0.data})
            .decode(type: OriginStatus.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {print($0)}, receiveValue: {self.origin = $0})
            .store(in: &cancellable)
    }
}
