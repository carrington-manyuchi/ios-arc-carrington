//
//  TestThree.swift
//  ios-arc-carrington
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/26.
//

import Foundation


// MARK: - TestThree JSON Model

struct TestThree: Codable {
    let isbn: String
    let author, editor: Author
    let title: String
    let category: [String]
}

// MARK: - Author
struct Author: Codable {
    let lastname, firstname: String
}
