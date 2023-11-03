//
//  SongModelView.swift
//  PoetrySong
//
//  Created by 褚宣德 on 2023/11/2.
//

import SwiftUI

struct ScrollStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .containerRelativeFrame(.horizontal)
            .scrollTransition(axis: .horizontal) { content, phase in
                content
                    .rotation3DEffect(.degrees(phase.value * 40.0), axis: (x: phase.value, y: 1, z: 0))
                    .scaleEffect(
                    x: phase.isIdentity ? 1 : 0.8,
                    y: phase.isIdentity ? 1 : 0.8
                )
            }
    }
}

extension View {
    func scrollStyleModifier() -> some View {
        modifier(ScrollStyle())
    }
}

struct BSongView: View {
    let cards = stride(from: 1, through: 566, by: 1).map { i in
        CardItem(id: i, name: "b\(i)")
    }
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(cards) { card in
                    ZStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(.ultraThinMaterial)
                            .stroke(.white)
                        Image(card.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            
                        
                    }
                    .scrollStyleModifier()
                    
                }
            }//LazyHStack
            .scrollTargetLayout()
        }//ScrollView
        .background(LinearGradient(colors: [.purple, .blue], startPoint: .top, endPoint: .bottom))
    }
}

struct DSongView: View {
    let cards = stride(from: 1, through: 818, by: 1).map { i in
        CardItem(id: i, name: "d\(i)")
    }
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(cards) { card in
                    ZStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(.ultraThinMaterial)
                        Image(card.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    .scrollStyleModifier()
                }
            }//LazyHStack
            .scrollTargetLayout()
        }//ScrollView
        .background(LinearGradient(colors: [.purple, .blue], startPoint: .top, endPoint: .bottom))
    }
}

struct NSongView: View {
    let cards = stride(from: 1, through: 160, by: 1).map { i in
        CardItem(id: i, name: "d\(i)")
    }
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(cards) { card in
                    ZStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(.ultraThinMaterial)
                        Image(card.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    .scrollStyleModifier()
                }
            }//LazyHStack
            .scrollTargetLayout()
        }//ScrollView
        .background(LinearGradient(colors: [.purple, .blue], startPoint: .top, endPoint: .bottom))
    }
}


#Preview("BSongView") { BSongView() }
#Preview("DSongView") { DSongView() }
#Preview("NSongView") { NSongView() }

