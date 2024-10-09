//
//  Model.swift
//  Learning
//
//  Created by Jeff Kranenburg on 09/10/2024.
//

import Foundation

struct GitHubUser: Codable {
    
    let login: String
    let avatarUrl: String
    let bio: String
    
}

struct GitHubUserRepo: Codable {
    
    var id: Int
    var name: String
    var _private: Bool
    var htmlUrl: String
    
    private enum CodingKeys : String, CodingKey {
        case id, name
        case _private = "private"
        case htmlUrl = "html_url"
    }
}

enum GHError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}
