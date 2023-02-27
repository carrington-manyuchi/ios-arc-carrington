//
//  ViewController.swift
//  ios-arc-carrington
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ReadJSON()
        
    }
    
    
    func ReadJSON() {
        
        let fileName = "test1"
        let fileType = "json"
        
        if  let path = Bundle.main.path(forResource: fileName, ofType: fileType) {
            
            do {
            
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
                
                let jsonObject = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)

                print(jsonObject)
                
                //let testOne = try? JSONDecoder().decode(TestOne.self, from: data)
                
               
                
            } catch {
                print("JSON file was not found")
            }
            
        } else {
            
        }
        
        
    }
    

}



