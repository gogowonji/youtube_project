//
//  Video.swift
//  youtube
//
//  Created by 지원 on 2021/08/16.
//

import Foundation

struct Video : Decodable{
    //protocol
    
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    
    enum CodingKeys : String, CodingKey {
        //enum : 열거형
        //String 쓰는 이유 : json과 이름이 다른 경우를 위해서
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
        
    }
    
    init (from decoder: Decoder) throws {
        //init - 열거형 사용, 초기값 세팅
        
        let container = try decoder.container(keyedBy: CodingKeys.self )
        //self : 모든 인스턴스들이 암시적으로 생성하는 프로퍼티
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        //Parse title
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        //self = this의 느낌
        
        //Parse description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        //Parse the publish date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        //Parse thumbnails
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey:.thumbnail)
        
        //Parse videoId
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
        
    }
}
