//
//  Hader.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 21/11/2023.
//

import SwiftUI

struct Hader_Discover: View {
    var body: some View {
        HStack{
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                HStack{
                    Image("icons8")
                    Text("All")
                        .foregroundStyle(.white)
                    
                }
                .padding(.leading, 8)
                .padding(.trailing, 16)
                .padding(.vertical, 8)
                .background(Color("SecondaryColor"))
                .cornerRadius(19)

                   
            })
           
            
            
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                HStack{
                    Image("meditation")
                    Text("Ambient")
                        .foregroundStyle(.white)
                    
                }
                .padding(.leading, 8)
                .padding(.trailing, 16)
                .padding(.vertical, 8)
                .background(.black)
                .cornerRadius(19)

                   
            })
            
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                HStack{
                    Image("infant")
                    Text("For Kids")
                        .foregroundStyle(.white)
                    
                }
                .padding(.leading, 8)
                .padding(.trailing, 16)
                .padding(.vertical, 8)
                .background(Color("PrimeryColor"))
                .cornerRadius(19)
                
                   
            })
            
            
        }.frame(width: 370, alignment: .leading)
    }
}

#Preview {
    Hader_Discover()
}
