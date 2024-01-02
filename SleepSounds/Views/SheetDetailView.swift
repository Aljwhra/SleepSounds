//
//  SheetDetailView.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 28/11/2023.
//

import SwiftUI

struct SheetDetailView: View {
    
    @State var audioCard: AudioCardModel
    @State private var showPlayer = false
   // @State private var isFavorite = false
   
    
    var body: some View{
        
            
            VStack(spacing: 15){
                VStack(alignment: .leading,spacing: 5){
                    
                    Text(audioCard.title)
                        .fontWeight(.semibold)
                        .font(.title2)
                        .foregroundStyle(.white)
                    
                    Text(audioCard.description)
                        .font(.title3)
                        .foregroundStyle(.gray)
                    
                    Text(DateComponentsFormatter.abbreviated.string(from: audioCard.duration) ?? audioCard.duration.formatted() + "s")
                        .font(.title3)
                        .foregroundStyle(.gray)
                    
                }.frame(width: 370, alignment: .leading)
            
                HStack(spacing: 10){
                    Button{
                        showPlayer = true
                    }label: {
                        
                        Label("Play" , systemImage: "play.fill" )
                        
                        .padding(8)
                        .frame(width: 164, alignment: .center)
                        .background(Color("SecondaryColor"))
                        .cornerRadius(20)
                    }
                    .fullScreenCover(isPresented: $showPlayer){
                        PlayerAudioView(audioCard: audioCard, favoritesManager: FavoritesManager())
                    }
                  
               
                    
                }
                .font(.title3)
                .bold()
                .foregroundStyle(.white)
                
                
                Divider()
                    .background(.gray)
                    .frame(width: 350)
                
                VStack(alignment: .leading){
                    
                    Text("About this audio")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.white)
                    Text("An audio clip has been selected especially for you. This will help you improve your sleep and your body as a whole. Your dreams will be cheerful and vivid.-string")
                        .multilineTextAlignment(.leading)
                        .font(.callout)
                        .foregroundStyle(.white)
                    
                    
                }.padding()
                
            }
        
    }
}

//#Preview {
//    SheetDetailView()
//}
