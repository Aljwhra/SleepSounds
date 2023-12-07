//
//  SleepSoundsApp.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 20/11/2023.
//

import SwiftUI

@main
struct SleepSoundsApp: App {
    @StateObject var audioManager = AudioManager()
    
    var body: some Scene {
        WindowGroup {
            LaunchScreenView()
             .environmentObject(audioManager)
        }
    }
}

