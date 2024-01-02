//
//  FavoriteView.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 08/12/2023.
//



import SwiftUI

struct FavoriteView: View {
    let columns: [GridItem] = [
        GridItem(.flexible(minimum: 100), spacing: -10),
        GridItem(.flexible(minimum: 100), spacing: -10),
    ]

    @ObservedObject var favoritesManager: FavoritesManager

    var body: some View {
        NavigationStack {
            VStack {
                Text("Favorite")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 350, alignment: .leading)
                    .padding(.top,15)

                ScrollView(.vertical, showsIndicators: false){
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(favoritesManager.favorites) { audio in
                            NavigationLink(
                                destination: AudioDetailView(audioCard: audio),
                                label: {
                                    AudioCard(audioCard: audio)
                                }
                            )
                        }
                    }
                }
            }
            .background(
                Color("backColor")
                    .ignoresSafeArea()
            )
        }
    }
}

#Preview {
    FavoriteView(favoritesManager: FavoritesManager())
}
