//
//  AudioManager.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 05/12/2023.
//

import Foundation
import AVKit


class AudioManager: ObservableObject {
    
        
   @Published var player: AVAudioPlayer?
    
    @Published var isPlaying: Bool = false{
        didSet{
            print("isPlaying", isPlaying)
        }
    }
    
    
    @Published var isLooping: Bool = false
    
    
    
    func startPlayer(audio: String, isPreview: Bool = false){
        
        guard let url = Bundle.main.url(forResource: audio, withExtension: "mp3") else{
            print("Audio Not Found! : \(audio)")
            
            return
        }
        
        do{
            
            // to make the audio work even if the device is on silent mode .
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            // activate the Session just in case the Session is field
            try AVAudioSession.sharedInstance().setActive(true) // this will make audio music running in the preview Xcode so will add isPreview argument.
            player = try AVAudioPlayer(contentsOf: url)
            
            if isPreview{
                player?.prepareToPlay()
            }else{
                player?.play()
                isPlaying = true
            }
            
            
        }catch{
            print("Fill to initialize player ", error)
        }
        
    }
    
    
    func playPause(){
        
        guard let player = player else{
            print ("Instance of audio player not found")
            
            return
        }
        
        if player .isPlaying{
            
            player.pause()
            isPlaying = false
            
        }else{
            player.play()
            isPlaying = true
        }
        
    }
    
    
    
    func stop(){
        guard let player = player else {return}
        
        if player.isPlaying{
            player.stop()
            
            isPlaying = false
            
        }
    }
    
    
    func toggleLoop(){
        
        guard let player = player  else{ return }
        
        player.numberOfLoops = player.numberOfLoops == 0 ? -1 : 0
        
        isLooping = player.numberOfLoops != 0
        
        print("isLooping", isLooping)
    }
    
    
}
