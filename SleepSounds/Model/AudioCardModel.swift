//
//  Audio_Model.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 21/11/2023.
//

import SwiftUI

struct AudioCardModel: Identifiable{
    
    let id = UUID()
    var nameImage: String
    var title: String
    var description: String
    var audio: String
    var duration: TimeInterval
}


