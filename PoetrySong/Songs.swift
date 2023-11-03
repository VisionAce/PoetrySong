//
//  Songs.swift
//  PoetrySong
//
//  Created by 褚宣德 on 2023/11/2.
//

import SwiftUI

struct Song {
    let type: String
    let name: String
    var id = UUID()
    
}

struct CardItem: Identifiable {
    var id: Int
    var name: String
}
