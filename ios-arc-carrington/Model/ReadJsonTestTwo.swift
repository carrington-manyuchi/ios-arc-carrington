//
//  ReadJsonTestTwo.swift
//  ios-arc-carrington
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/03.
//

import Foundation



func ReadJsonTestTwo() {
    
    let fileName2 = "test2"
    let fileType2 = "json"

    
    
    if let path = Bundle.main.path(forResource: fileName2, ofType: fileType2) {
        
        do {
            
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
            let result = try JSONDecoder().decode([TestTwo].self, from: data)
            
            let userData = [TestTwo].self
            
            print(userData)
            
            
        } catch {
            print("Error we cant find the Test Two File")
        }
    } else {
        return
    }
    
}
