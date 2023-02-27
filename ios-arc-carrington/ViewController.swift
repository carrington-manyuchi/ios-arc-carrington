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
        
        let fileName = "test2"
        let fileType = "json"
        
        if  let path = Bundle.main.path(forResource: fileName, ofType: fileType) {
            
            do {
            
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
                
                let jsonObject = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                
                print(jsonObject)
                
            } catch {
                
            }
            
        } else {
            
        }
        
        
    }
    
//    func ReadingJSONFile() {
//
//        let fileName = "test1"
//        let fileType = "json"
//
//        if let path = Bundle.main.path(forResource: fileName, ofType: fileType) {
//            // fileURLWithPath
//        do {
//            let data = try Data(contentsOf: URL(filePath: path), options: .mappedIfSafe)
//            let jsonObject = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
//            print(jsonObject)
//
//        } catch {
//            print("JSON file not found")
//        }
//      }
//    }

}

