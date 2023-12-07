//
//  AudioViewModel.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 05/12/2023.
//

import Foundation


class AudioViewModel : ObservableObject {
    
    @Published var audios: [AudioCardModel]
    
    init(){
        audios = []
    }
        
}
