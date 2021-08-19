//
//  ConstantsTemplate.swift
//  youtube
//
//  Created by 지원 on 2021/08/19.
//

import Foundation


struct Constants{
    static var API_KEY = ""
    static var PLAYLIST_ID = ""
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VEDIOCELL_ID = "VedioCell"
    
}

