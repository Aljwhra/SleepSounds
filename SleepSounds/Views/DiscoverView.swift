//
//  Discover_View.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 20/11/2023.
//

import SwiftUI

struct DiscoverView: View {
    
 
    @EnvironmentObject var audioManager: AudioManager
    
  let audios = [
    AudioCardModel(nameImage: "rainstorm", title: "Rainstorm", description: "Ambient", audio: "HeavyRainstorm", duration: 128),
    AudioCardModel(nameImage: "moon", title: "Cheese Moon", description: "Story For Kids", audio: "CheeseMoon", duration: 445),
    AudioCardModel(nameImage: "sleepingBaby", title: "Twinkle", description: "Song For Kids", audio: "twinkle", duration: 114),
    AudioCardModel(nameImage: "camping", title: "Wood Burning", description: "Ambient", audio:"WoodBurning", duration: 54),
    AudioCardModel(nameImage: "pirateMisfortune", title: "Pirate Misfortune", description: "Story For Kids", audio: "pirateMisfortune", duration: 445),
    AudioCardModel(nameImage: "earth", title: "Chill hop Music", description: "Ambient", audio: "chillhop", duration: 210),
    AudioCardModel(nameImage: "forest", title: "Forest wind", description: "Ambient", audio: "WindyInForest", duration: 180),
    AudioCardModel(nameImage: "river", title: "River", description: "Ambient", audio: "Oceanwater", duration: 163),
    AudioCardModel(nameImage: "room", title: "Lofi Music", description: "Ambient", audio: "Library", duration: 170),
    AudioCardModel(nameImage: "theghost", title: "Yost the ghost", description: "Story For Kids", audio: "theghost", duration: 275),
    AudioCardModel(nameImage: "oceanWaves", title: "Ocean Waves", description: "Ambient", audio: "OceanWaves", duration: 60),
    AudioCardModel(nameImage: "flowy", title: "Airplane Mod", description: "Ambient", audio: "Flowy", duration: 105),
    AudioCardModel(nameImage: "bear", title: "Adventures in Alaska", description: "Story For Kids", audio: "AdventuresAlaska", duration: 418),
    AudioCardModel(nameImage: "lullaby", title: "Lullaby Goodnight", description: "Song For Kids", audio: "lullabygoodnight", duration: 151)
    
    ]

    @State private var selectedFilter: FilterType = .all
    
    
    var filteredAudios: [AudioCardModel] {
           switch selectedFilter {
           case .all:
               return audios
           case .ambient:
               return audios.filter { $0.description == "Ambient" }
           case .forKids:
               return audios.filter { $0.description == "Story For Kids" || $0.description == "Song For Kids" }
           }
       }
    
   

    let columns: [GridItem] = [
        GridItem(.flexible(minimum: 100), spacing: -10),
        GridItem(.flexible(minimum: 100), spacing: -10),
    ]
    
    
    var body: some View {
        NavigationStack{
            VStack{
                
                
                VStack(spacing: 25){
                    
                    Text("Discover")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 307, height: 44, alignment: .leading)
                    

                    HStack{
                        DiscoverButton(selectedFilter: $selectedFilter)
                    }
                    
                }
                .padding(.top,35)
                .frame(maxWidth: .infinity)
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(filteredAudios) { audio in
                            NavigationLink(
                                destination: {
                                    AudioDetailView(audioCard: audio)
                                },
                                label: {
                                    AudioCard(audioCard: audio)
                                }
                            )
                        }
                    }
                }.padding(.top)
                
            }
            .background(
                Color("backColor")
                    .ignoresSafeArea())
        }
    }
}

enum FilterType {
    case all
    case ambient
    case forKids
}

#Preview {
    DiscoverView()
        .environmentObject(AudioManager())
        
}
