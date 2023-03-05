//
//  TestTwo.swift
//  ios-arc-carrington
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/26.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let testTwo = try? JSONDecoder().decode(TestTwo.self, from: jsonData)

import Foundation

// MARK: - TestTwo
struct TestTwo: Codable {
    let medications: [Medication]
    let labs, imaging: [Imaging]
}

// MARK: - Imaging
struct Imaging: Codable {
    let name: String
    let time: Time
    let location: String
}

enum Time: String, Codable {
    case the1Year = "1 Year"
    case the3Weeks = "3 Weeks"
    case today = "Today"
}

// MARK: - Medication
struct Medication: Codable {
    let aceInhibitors, antianginal, anticoagulants, betaBlocker: [AceInhibitor]
    let diuretic, mineral: [AceInhibitor]
}

// MARK: - AceInhibitor
struct AceInhibitor: Codable {
    let name, strength, dose, route: String
    let sig, pillCount, refills: String
}
