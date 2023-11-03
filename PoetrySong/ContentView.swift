//
//  ContentView.swift
//  PoetrySong
//
//  Created by 褚宣德 on 2023/11/2.
//

import SwiftUI

struct ContentView: View {
    @State private var song: [Song] = [
        .init(type: "小本詩歌", name: "b0"),
        .init(type: "大本詩歌", name: "d0"),
        .init(type: "新歌頌詠", name: "n0")
    ]
    
    var body: some View {
        NavigationStack {
            ForEach(song, id: \.id) { song in
                NavigationLink {
                    if song.type == "小本詩歌" {
                        BSongView()
                    } else if song.type == "大本詩歌" {
                        DSongView()
                    } else if song.type == "新歌頌詠" {
                        NSongView()
                    } else {
                        Text("Detail View")
                    }
                } label: {
                    Form {
                        HStack {
                            Spacer()
                            Image(song.name)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 200)
                            Spacer()
                        }
                    }
                }
            }
            .navigationTitle("詩歌")
        }
    }
}


#Preview {
    ContentView()
}
