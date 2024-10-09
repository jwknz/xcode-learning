//
//  Functions.swift
//  Learning
//
//  Created by Jeff Kranenburg on 09/10/2024.
//

import Foundation

func getUser(_ user: String) async throws -> GitHubUser {
    
    let endpoint = "https://api.github.com/users/\(user)"
    
    guard let url = URL(string: endpoint) else { throw GHError.invalidURL }
    
    let (data, response) = try await URLSession.shared.data(from: url)
    
    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
        throw GHError.invalidResponse
    }
    
    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(GitHubUser.self, from: data)
    } catch {
        throw GHError.invalidData
    }
}

func getUserPublicRepos(_ user: String) async throws -> [GitHubUserRepo] {
    
    let endpoint = "https://api.github.com/users/\(user)/repos"
    
    guard let url = URL(string: endpoint) else { throw GHError.invalidURL }
    
    let (data, response) = try await URLSession.shared.data(from: url)
    
    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw GHError.invalidResponse }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode([GitHubUserRepo].self, from: data)
    } catch {
        throw GHError.invalidData
    }
    
}

func getUserAllRepos(_ user: String) async throws -> [GitHubUserRepo] {
    
    let endpoint = "https://api.github.com/users/\(user)/repos"
    
    guard let url = URL(string: endpoint) else { throw GHError.invalidURL }
    
    let (data, response) = try await URLSession.shared.data(from: url)
    
    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw GHError.invalidResponse }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode([GitHubUserRepo].self, from: data)
    } catch {
        throw GHError.invalidData
    }
    
}
