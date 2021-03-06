//
//  Response.swift
//  youtube
//
//  Created by 지원 on 2021/08/18.
//

import Foundation

struct Response : Decodable {
    
    var items:[Video]?
    
    enum CodingKeys:String, CodingKey {
        
        case items
        
    }
    
    init (from decoder:Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.items = try container.decode([Video].self, forKey: .items)
    }
}
