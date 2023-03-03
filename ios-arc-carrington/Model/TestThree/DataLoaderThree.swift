//
//  DataLoaderThree.swift
//  ios-arc-carrington
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/03.
//

import Foundation

public class DataLoader3 {
    
   // var userData3 = [TestThree]()
    
    init() {
        ReadJSON()
    }
    
    func ReadJSON() {
        
        let filename3 = "test3"
        let filetype3 = "json"
        
        if let path = Bundle.main.path(forResource: filename3, ofType: filetype3) {
            
            do {
                
                let data =  try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                
                let jsonData = try? JSONDecoder().decode(TestThree.self, from: data)
                
                //self.userData3 = jsonData
                
                print(jsonData)
                
            } catch {
                print("Error no JSON 3 file was found")
            }
            
        } else {
            return
        }
        
    }
}
