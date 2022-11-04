//
//  statsViewModel.swift
//  apexStats
//
//  Created by Tyler Kruer on 11/4/22.
//

import Foundation

struct VersionStatus: Codable {
    var version: String?
}

struct ConvertStatus: Codable {
    
}

struct OriginStatus: Codable {
    
}

struct ServerStatus: Codable {
    
}

struct NewsStatus: Codable {
    
}

struct CraftingStatus: Codable {
    
}

struct StoreStatus: Codable {
    
}

struct PredatorStatus: Codable {
    
}

struct MapsStatus: Codable {
    
}

struct StatsStatus: Codable {
    let global: Global?
    let realtime: Realtime?
    let legends: Legends?
    let mozambiquehereInternal: MozambiquehereInternal?
    let als: Als?
    let total: Total?
}


// MARK: - Als
struct Als: Codable {
    let isALSDataEnabled: Bool?
}

// MARK: - Global
struct Global: Codable {
    let name: String?
    let uid: Double?
    let avatar: String?
    let platform: String?
    let level, toNextLevelPercent, internalUpdateCount: Int?
    let bans: Bans?
    let rank, arena: Arena?
    let battlepass: Battlepass?
    let internalParsingVersion: Int?
    let badges: [Damage]?
    let levelPrestige: Int?
}

// MARK: - Arena
struct Arena: Codable {
    let rankScore: Int?
    let rankName: String?
    let rankDiv, ladderPosPlatform: Int?
    let rankImg: String?
    let rankedSeason: String?
}

// MARK: - Damage
struct Damage: Codable {
    let name: String?
    let value: Int?
}

// MARK: - Bans
struct Bans: Codable {
    let isActive: Bool?
    let remainingSeconds: Int?
    let lastBanReason: String?
}

// MARK: - Battlepass
struct Battlepass: Codable {
    let level: String?
    let history: [String]?
}

// MARK: - Legends
struct Legends: Codable {
    let selected: Selected?
    let all: All?
}

// MARK: - All
struct All: Codable {
    let revenant, crypto, horizon, gibraltar: Ash?
    let wattson, fuse, bangalore, wraith: Ash?
    let octane, bloodhound, caustic, lifeline: Ash?
    let pathfinder: Pathfinder?
    let loba, mirage, rampart, valkyrie: Ash?
    let seer, ash, madMaggie, newcastle: Ash?
    let vantage: Ash?
}

// MARK: - Ash
struct Ash: Codable {
    let imgAssets: ImgAssets?
}

// MARK: - ImgAssets
struct ImgAssets: Codable {
    let icon: String?
    let banner: String?
}

// MARK: - Pathfinder
struct Pathfinder: Codable {
    let data: [PathfinderDatum]?
    let gameInfo: PathfinderGameInfo?
    let imgAssets: ImgAssets?
}

// MARK: - PathfinderDatum
struct PathfinderDatum: Codable {
    let name: String?
    let value: Int?
    let key: String?
    let rank, rankPlatformSpecific: Rank?
}

// MARK: - Rank
struct Rank: Codable {
    let rankPos: Int?
    let topPercent: Double?
}

// MARK: - PathfinderGameInfo
struct PathfinderGameInfo: Codable {
    let badges: [Damage]?
}

// MARK: - Selected
struct Selected: Codable {
    let legendName: String?
    let data: [SelectedDatum]?
    let gameInfo: SelectedGameInfo?
    let imgAssets: ImgAssets?
}

// MARK: - SelectedDatum
struct SelectedDatum: Codable {
    let name: String?
    let value: Int?
    let key: String?
    let global: Bool?
}

// MARK: - SelectedGameInfo
struct SelectedGameInfo: Codable {
    let skin, skinRarity, frame, frameRarity: String?
    let pose, poseRarity, intro, introRarity: String?
    let badges: [Badge]?
}

// MARK: - Badge
struct Badge: Codable {
    let name: String?
    let value: Int?
    let category: String?
}

// MARK: - MozambiquehereInternal
struct MozambiquehereInternal: Codable {
    let isNewToDB: Bool?
    let claimedBy, apiAccessType, clusterID: String?
    let rateLimit: RateLimit?
    let clusterSrv: String?
}

// MARK: - RateLimit
struct RateLimit: Codable {
    let maxPerSecond: Int?
    let currentReq: String?
}

// MARK: - Realtime
struct Realtime: Codable {
    let lobbyState: String?
    let isOnline, isInGame, canJoin, partyFull: Int?
    let selectedLegend, currentState: String?
    let currentStateSinceTimestamp: Int?
    let currentStateAsText: String?
}

// MARK: - Total
struct Total: Codable {
    let kills, damage, grappleTravelDistance: Damage?
    let kd: Kd?
}

// MARK: - Kd
struct Kd: Codable {
    let value, name: String?
}
