//
//  Hader.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 21/11/2023.
//

import SwiftUI

struct DiscoverButton: View {
    
//    var theButton: DiscoverButtonModel
//    var isSelected: Bool
  
  @Binding var selectedFilter: FilterType
    
    var body: some View {
        HStack{
            
            Button(action: {
                selectedFilter = .all
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
                .background(selectedFilter == .all ? Color("SecondaryColor") : Color("PrimeryColor"))
                .cornerRadius(19)

                   
            })
            
            
            
            
            Button(action: {
                selectedFilter = .ambient
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
                .background(selectedFilter == .ambient ? Color("SecondaryColor") : Color("PrimeryColor"))
                .cornerRadius(19)

                   
            })
            
            
            
            Button(action: {
                selectedFilter = .forKids
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
                .background(selectedFilter == .forKids ? Color("SecondaryColor") : Color("PrimeryColor"))
                .cornerRadius(19)

                   
            })
           
                        
            
        }
       // .frame(width: 370, alignment: .leading)
           
    }
}

//#Preview {
//    DiscoverButton(
//        selectedFilter: <#Binding<FilterType>#>, theButton: DiscoverButtonModel(icons: "icons8", name:"All"),
//        isSelected: true)
//}
