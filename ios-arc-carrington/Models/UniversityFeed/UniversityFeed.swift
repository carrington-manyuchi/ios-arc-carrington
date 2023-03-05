//
//  UniversityFeed.swift
//  ios-arc-carrington
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/04.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let universityFeed = try? JSONDecoder().decode(UniversityFeed.self, from: jsonData)

import Foundation

// MARK: - UniversityFeedElement
struct UniversityFeedElement: Codable {
    let stateProvince: String?
    let domains: [String]
    let country: Country
    let webPages: [String]
    let name: String
    let alphaTwoCode: AlphaTwoCode

    enum CodingKeys: String, CodingKey {
        case stateProvince = "state-province"
        case domains, country
        case webPages = "web_pages"
        case name
        case alphaTwoCode = "alpha_two_code"
    }
}

enum AlphaTwoCode: String, Codable {
    case us = "US"
}

enum Country: String, Codable {
    case unitedStates = "United States"
}

typealias UniversityFeed = [UniversityFeedElement]
