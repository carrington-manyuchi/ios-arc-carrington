//
//  TestOne.swift
//  ios-arc-carrington
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/26.
//

import Foundation

// MARK: - TestOne JSON Data Structure for the data that i will be mapping in views

struct TestOne: Codable {
    let id, type, name: String
    let ppu: Double
    let batters: Batters
    let topping: [Topping]
}

// MARK: - Batters
struct Batters: Codable {
    let batter: [Topping]
}

// MARK: - Topping
struct Topping: Codable {
    let id, type: String
}

typealias TestOneJson = [TestOne]


//   let testOne = try? JSONDecoder().decode(TestOne.self, from: jsonData)
