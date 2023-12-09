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
        AudioCardModel(nameImage: "rainstorm", title: NSLocalizedString("Rainstorm", comment: "Audio Title"), description: NSLocalizedString("Ambient", comment: "Audio Description"), audio: "HeavyRainstorm", duration: 128),
        AudioCardModel(nameImage: "moon", title: NSLocalizedString("Cheese Moon", comment: "Audio Title"), description: NSLocalizedString("Story For Kids", comment: "Audio Description"), audio: "CheeseMoon", duration: 445),
        AudioCardModel(nameImage: "sleepingBaby", title: NSLocalizedString("Twinkle", comment: "Audio Title"), description: NSLocalizedString("Song For Kids", comment: "Audio Description"), audio: "twinkle", duration: 114),
        AudioCardModel(nameImage: "camping", title: NSLocalizedString("Wood Burning", comment: "Audio Title"), description: NSLocalizedString("Ambient", comment: "Audio Description"), audio: "WoodBurning", duration: 54),
        AudioCardModel(nameImage: "pirateMisfortune", title: NSLocalizedString("Pirate Misfortune", comment: "Audio Title"), description: NSLocalizedString("Story For Kids", comment: "Audio Description"), audio: "pirateMisfortune", duration: 445),
        AudioCardModel(nameImage: "earth", title: NSLocalizedString("Chill hop", comment: "Audio Title"), description: NSLocalizedString("Music", comment: "Audio Description"), audio: "chillhop", duration: 210),
        AudioCardModel(nameImage: "forest", title: NSLocalizedString("Forest wind", comment: "Audio Title"), description: NSLocalizedString("Ambient", comment: "Audio Description"), audio: "WindyInForest", duration: 180),
        AudioCardModel(nameImage: "river", title: NSLocalizedString("River", comment: "Audio Title"), description: NSLocalizedString("Ambient", comment: "Audio Description"), audio: "Oceanwater", duration: 163),
        AudioCardModel(nameImage: "room", title: NSLocalizedString("Lofi", comment: "Audio Title"), description: NSLocalizedString("Music", comment: "Audio Description"), audio: "Library", duration: 170),
        AudioCardModel(nameImage: "theghost", title: NSLocalizedString("Yost the ghost", comment: "Audio Title"), description: NSLocalizedString("Story For Kids", comment: "Audio Description"), audio: "theghost", duration: 275),
        AudioCardModel(nameImage: "oceanWaves", title: NSLocalizedString("Ocean Waves", comment: "Audio Title"), description: NSLocalizedString("Ambient", comment: "Audio Description"), audio: "OceanWaves", duration: 60),
        AudioCardModel(nameImage: "flowy", title: NSLocalizedString("Airplane Mod", comment: "Audio Title"), description: NSLocalizedString("Music", comment: "Audio Description"), audio: "Flowy", duration: 105),
        AudioCardModel(nameImage: "bear", title: NSLocalizedString("Adventures in Alaska", comment: "Audio Title"), description: NSLocalizedString("Story For Kids", comment: "Audio Description"), audio: "AdventuresAlaska", duration: 418),
        AudioCardModel(nameImage: "lullaby", title: NSLocalizedString("Lullaby Goodnight", comment: "Audio Title"), description: NSLocalizedString("Song For Kids", comment: "Audio Description"), audio: "lullabygoodnight", duration: 151)
    ]


    @State private var selectedFilter: FilterType = .All
    
    
    var filteredAudios: [AudioCardModel] {
        switch selectedFilter {
        case .All:
            return audios
        case .Ambient:
            return audios.filter { $0.description == NSLocalizedString("Ambient", comment: "Audio Description") }
        case .Music:
            return audios.filter { $0.description == NSLocalizedString("Music", comment: "Audio Description") }
        case .ForKids:
            return audios.filter { $0.description == NSLocalizedString("Story For Kids", comment: "Audio Description") || $0.description == NSLocalizedString("Song For Kids", comment: "Audio Description") }
        }
    }

    let columns: [GridItem] = [
        GridItem(.flexible(minimum: 100), spacing: -10),
        GridItem(.flexible(minimum: 100), spacing: -10),
    ]
    
    
    var body: some View {
        NavigationStack{
            VStack{
                

                Text("Discover")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 350, alignment: .leading)
                    .padding(.top,15)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                        HStack{
                            ScrollView(.horizontal , showsIndicators: false){
                                DiscoverButton(selectedFilter: $selectedFilter)
                            }
                            .frame(height: 45)
                            .padding(.horizontal)
                        }.padding(.bottom)
                        
                
                   
                    
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
    case All
    case Ambient
    case Music
    case ForKids
    
}

#Preview {
    DiscoverView()
        .environmentObject(AudioManager())
        
}


