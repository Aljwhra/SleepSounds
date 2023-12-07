//
//  PlayerAudioView.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 04/12/2023.
//

import SwiftUI

struct PlayerAudioView: View {
    
    
    @EnvironmentObject var audioManager: AudioManager
    @State var audioCard: AudioCardModel
    @State private var timelineSlider: Double = 0.0
    @State private var isEditing : Bool = false
    @Environment(\.dismiss) var dismiss
    @State var isPreview: Bool = false
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common)
        .autoconnect()
    
    
    var body: some View {
        
        
        ZStack{
            Color("backColor")
                .ignoresSafeArea()
            
            VStack(alignment: .center,spacing: 25){
                
                
                HStack{
                    Button{
                        audioManager.stop()
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 30))
                            .foregroundStyle(.white)
                    }
                    Spacer()
                }
                .padding(.bottom , 55)
                
                
                VStack(spacing: 20){
                    Image(audioCard.nameImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 360, height: 350, alignment: .center)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    
                    Text(audioCard.title)
                        .fontWeight(.semibold)
                        .font(.title2)
                        .foregroundStyle(.white)
                    
                    Text(audioCard.description)
                        .font(.title3)
                        .foregroundStyle(.gray)
                    
                }
                
                //MARK: playback
                
                if let player = audioManager.player {
                    VStack(spacing: 6){
                        
                        //MARK: playback Timeline
                        
                        Slider(value: $timelineSlider, in: 0...player.duration){ editing in
                            
                            print("editing", editing)
                            isEditing = editing
                            
                            if !editing {
                                player.currentTime = timelineSlider
                            }
                        }
                        .accentColor(.white)
                        
                        
                        HStack{
                            Text(DateComponentsFormatter.positional.string(from: player.currentTime) ?? "0:00")
                            Spacer()
                            Text(DateComponentsFormatter.positional.string(from: player.duration - player.currentTime) ?? "0:00")
                        }
                        .font(.caption)
                        .foregroundStyle(.white)
                    }
                    
                    
                    
                    HStack{
                        
                        //MARK: Repeat Button
                        
                        let color: Color = audioManager.isLooping ? .orange : .white
                        
                        PlaybackControlButton(systemName: "repeat", color: color){
                            
                            audioManager.toggleLoop()
                        }
                        
                        Spacer()
                        
                        //MARK: Backward Button
                        
                        PlaybackControlButton(systemName: "gobackward.10"){
                            player.currentTime -= 10
                        }
                        
                        Spacer()
                        
                        //MARK: Play/Pause Button
                        
                        PlaybackControlButton(systemName: audioManager.isPlaying ? "pause.circle.fill" : "play.circle.fill" , fontSize:  39){
                            audioManager.playPause()
                        }
                        
                        Spacer()
                        
                        //MARK: Forward Button
                        
                        PlaybackControlButton(systemName: "goforward.10"){
                            player.currentTime += 10
                        }
                        
                        Spacer()
                        
                        //MARK: Stop Button
                        
                        PlaybackControlButton(systemName: "stop"){
                            audioManager.stop()
                            dismiss()
                        }
                        
                        
                    }.padding()
                }
                
            }.padding()
            
            
            
        }.onAppear{
            
            audioManager.startPlayer(audio: audioCard.audio, isPreview:isPreview)
            
        }
        .onReceive(timer){ _ in
            
            guard let player = audioManager.player, !isEditing else { return }
            timelineSlider = player.currentTime
        }
        
    }
}

#Preview {
    PlayerAudioView(audioCard: AudioCardModel(nameImage: "moon", title: "Guitar Camp", description: "Ambient", audio:"WindyInForest", duration: 181))
    .environmentObject (AudioManager())
    
}



