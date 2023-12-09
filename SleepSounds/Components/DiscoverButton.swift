//
//  Hader.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 21/11/2023.
//

import SwiftUI

struct DiscoverButton: View {
      
  @Binding var selectedFilter: FilterType
    
    var body: some View {
        HStack{
            
            Button(action: {
                selectedFilter = .All
            }, label: {
                HStack{
                    Image("icons8")
                    Text("All")
                    .foregroundStyle(.white)
                    .font(.headline)
                    
                }
                .padding(.leading, 8)
                .padding(.trailing, 16)
                .padding(.vertical, 8)
                .background(selectedFilter == .All ? Color("SecondaryColor") : Color("PrimeryColor"))
                .cornerRadius(19)

                   
            })
            
            
            
            Button(action: {
                selectedFilter = .Ambient
            }, label: {
                HStack{
                    Image("meditation")
                    Text("Ambient")
                    .foregroundStyle(.white)
                    .font(.headline)
                    
                }
                .padding(.leading, 8)
                .padding(.trailing, 16)
                .padding(.vertical, 8)
                .background(selectedFilter == .Ambient ? Color("SecondaryColor") : Color("PrimeryColor"))
                .cornerRadius(19)

                   
            })
            Button(action: {
                selectedFilter = .Music
            }, label: {
                HStack{
                    Image(systemName:"music.note")
                    Text("Music")
                    .foregroundStyle(.white)
                    .font(.headline)
                    
                }
                .padding(.leading, 8)
                .padding(.trailing, 16)
                .padding(.vertical, 8)
                .background(selectedFilter == .Music ? Color("SecondaryColor") : Color("PrimeryColor"))
                .cornerRadius(19)

                   
            })
            
            
            Button(action: {
                selectedFilter = .ForKids
            }, label: {
                HStack{
                    Image("infant")
                    Text("For Kids")
                    .foregroundStyle(.white)
                    .font(.headline)
                    
                }
                .padding(.leading, 8)
                .padding(.trailing, 16)
                .padding(.vertical, 8)
                .background(selectedFilter == .ForKids ? Color("SecondaryColor") : Color("PrimeryColor"))
                .cornerRadius(19)

                   
            })
           
            
        }
      
           
    }
}

//#Preview {
//    DiscoverButton(
//        selectedFilter: <#Binding<FilterType>#>, theButton: DiscoverButtonModel(icons: "icons8", name:"All"),
//        isSelected: true)
//}
