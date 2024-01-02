//
//  AudioDetailView.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 26/11/2023.
//

import SwiftUI

struct AudioDetailView: View {
    
    @State var audioCard: AudioCardModel
    @State private var showSheet: Bool = true
    
    
    var body: some View {
        
            ZStack{
                
                Image(audioCard.nameImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                HStack(spacing: 30){
                    
                    VStack{
                        Image("sleeping")
                        Text("Mood")
                        
                        Text("Lighthearted")
                            .font(.title3)
                            .bold()
                    }
                    
                    VStack{
                        Image("sleep")
                        Text("Dreams")
                        
                        Text("Daydreams")
                            .font(.title3)
                            .bold()
                    }
                    
                }.foregroundStyle(.white)
                    .padding(.bottom,350)
                
                
            }
            
            .sheet(isPresented: $showSheet){
                NavigationStack{
                    ZStack{
                        Color("backColor")
                            .ignoresSafeArea()
                        
                        SheetDetailView(audioCard: audioCard)
                        
                    }
                    
                }
                .presentationDetents([.fraction(0.45), .fraction(0.85)])
              // .interactiveDismissDisabled(true)
            }
        
    }
}


