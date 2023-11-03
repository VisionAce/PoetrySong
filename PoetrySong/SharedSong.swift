//
//  SharedSong.swift
//  PoetrySong
//
//  Created by 褚宣德 on 2023/11/2.
//

import Foundation
class SharedSong:ObservableObject, Codable {
    static let types = ["小本詩歌", "大本詩歌", "新歌頌詠"]
    
    init() { }
}
