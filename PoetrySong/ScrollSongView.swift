//
//  ScrollSongView.swift
//  PoetrySong
//
//  Created by 褚宣德 on 2023/11/2.
//

    // MARK: - PROPERTY
import SwiftUI


struct ScrollTransitionView: View {
    
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
                        Image(card.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    .containerRelativeFrame(.horizontal)

                }
            }//LazyHStack
            .scrollTargetLayout()
        }//ScrollView
        .background(LinearGradient(colors: [.purple, .blue], startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    ScrollTransitionView()
}
