//
//  Audio.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 21/11/2023.
//

import SwiftUI

struct AudioCard: View {
    
    var audioCard: AudioCardModel
    
    
    var body: some View {
        
        VStack(spacing: 7){
            Image(audioCard.nameImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 164, height: 156, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            
            VStack{
                Text(audioCard.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                
                Text(audioCard.description)
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
        }
    }
}

//#Preview {
//    Audio(audio: Audio_Model(id: UUID(), nameImage: "camping", title:"Guitar Camp", description: "Instrumental"))
//}

