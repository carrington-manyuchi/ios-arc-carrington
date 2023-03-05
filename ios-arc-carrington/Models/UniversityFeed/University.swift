//
//  University.swift
//  ios-arc-carrington
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/04.
//

import Foundation


public class University {
    
    var testData = [UniversityFeedElement]()
    
    init() {
        GetData()
    }
    
    func GetData() {
        
        let urlString = "http://universities.hipolabs.com/search?country=United+States"
        
        let url = URL(string: urlString)
        
        guard  url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
           // check for errors
            
            if error == nil && data != nil {
                
                
                
                //Parse JSON
                
                let decoder = JSONDecoder()
                
               
                // let universityFeed = try decoder.decode(UniversityFeed.self, from: data)
                let universityFeed = try! decoder.decode([UniversityFeedElement].self, from: data!)
                
                
               // print(universityFeed.name )
                
                self.testData = universityFeed
                
            }
        }
        
        //Make the API Call
        dataTask.resume()
        
    }
    

}
