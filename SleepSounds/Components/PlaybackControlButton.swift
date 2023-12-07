//
//  PlaybackControlButton.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 05/12/2023.
//

import SwiftUI

struct PlaybackControlButton: View {
    
    var systemName: String = "play.fill"
    var fontSize: CGFloat = 24
    var color: Color = .white
    var action: () -> Void
    
    var body: some View {
        
        Button{
            action()
        } label: {
            Image(systemName: systemName)
                .font(.system(size: fontSize))
                .foregroundStyle(color)
        }
    }
}

#Preview {
    PlaybackControlButton(action: {})
        .background(Color("backColor"))
       
}
