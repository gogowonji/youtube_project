//
//  Model.swift
//  youtube
//
//  Created by 지원 on 2021/08/16.
//

import Foundation


struct Model {
    func getVideos() {
        
        //Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        //Get a  URLSession object
        let session = URLSession.shared
        
        //Get a data task from the URLSession object
        let dataTask = session.dataTask(with:url!) { (data, response, error) in
            if error != nil || data == nil {
                return
            }
            
            //Parsing the data into video objects
            
        }
        
        //Kick off the task
        dataTask.resume()
        
        
    }
}
