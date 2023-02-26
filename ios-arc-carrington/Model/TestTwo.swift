//
//  TestTwo.swift
//  ios-arc-carrington
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/26.
//

import Foundation

// MARK: - TestTwo JSON Data Model

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
