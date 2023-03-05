//
//  RandomUserData.swift
//  ios-arc-carrington
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/05.
//


import Foundation


public class RandomUserData {
    
   
    
    init() {
        GetData()
    }
    
    func GetData() {
        
        let urlString = "https://randomuser.me/api/"
        
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
                let randomUser = try! decoder.decode(RandomUser.self, from: data!)
                
                
                print(randomUser )
                
                //self.testData = universityFeed
                
            }
        }
        
        //Make the API Call
        dataTask.resume()
        
    }
    

}
