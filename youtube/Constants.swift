//
//  Constants.swift
//  youtube
//
//  Created by 지원 on 2021/08/16.
//

import Foundation

struct Constants{
    static var API_KEY = "AIzaSyBglBYJKlIbuWCU-F0EJmqkIJZ8TDlwbTc"
    static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
}
