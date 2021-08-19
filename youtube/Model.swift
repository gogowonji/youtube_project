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
        
        //guard : if랑 비슷한데 반드시 가져가야 할 조건을 검사함
        guard url != nil else {
            return
        }
        
        //Get a URLSession object
        //싱글턴 패턴으로 세션을 할당하는 느낌?
        let session = URLSession.shared
        
        //Get a data task from the URLSession object
        let dataTask = session.dataTask(with:url!) {
            (data, response, error) in
            if error != nil || data == nil {
                return
            }
            
            do {
                //Parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                //Response.self = value of Response
                //data! -> !: 암묵적으로 벗겨진 옵셔널 (값이 있다고 가정 nill X)
                
                dump(response)
            }catch{
                
            }
            
        }
        
        //Kick off the task
        dataTask.resume()
        
        
    }
}
