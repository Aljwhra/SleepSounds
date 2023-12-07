//
//  DateFormatterExtensions.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 05/12/2023.
//

import Foundation



extension DateComponentsFormatter {
    
    //This pattern is called lazy Initialization
    
    static let abbreviated: DateComponentsFormatter = {
        print("Initializing DateComponentsFormatter.abbreviated")
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.hour,.minute,.second]
        formatter.unitsStyle = .abbreviated
        
        return formatter
    }()
    
    
    static let positional: DateComponentsFormatter = {
        print("Initializing DateComponentsFormatter.positional")
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.minute,.second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        
        return formatter
    }()
    
    
}
