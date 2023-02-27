//
//  DataLoader.swift
//  ios-arc-carrington
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/27.
//

import Foundation


public class DataLoader {
    
    var testData = [TestOne]()

    
    // MARK: - Immediately loads the LoadJSON() when the DataLoader class is initialised / created & sort()
    init() {
        LoadJSON()
        sort()
    }
    
    func LoadJSON() {
        
        let fileName = "test1"
        let fileType = "json"
        
        if  let path = Bundle.main.path(forResource: fileName, ofType: fileType) {
        
            
            do {
                
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let  jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([TestOne].self, from: data)
                
                self.testData = dataFromJson
               
                
            } catch {
                print("Failed to load the JSON file")
            }
        } else {
            return
        }
    }
    
    
    // MARK: - Creating the sort func and sort the data in ascending
    
    func sort() {
        self.testData = self.testData.sorted(by: { $0.id < $1.id })
    }
}
