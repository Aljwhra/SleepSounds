//
//  CreateAccountView.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 08/12/2023.
//

import SwiftUI

struct CreateAccountView: View {
    
    @State private var appleId = ""
    @State private var password = ""
    @State private var isActive = false
    @State private var isCreateAccount = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color.back
                .ignoresSafeArea()
            
            
            VStack(spacing: 25){
                
                HStack{
                    Button{
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 30))
                            .foregroundStyle(.white)
                    }
                    Spacer()
                }
                .frame(height: 30 ,alignment: .leading)
                .padding()
                
                Spacer()
                
                HStack(spacing:15){
                    Image(systemName: "person.fill")
                        .foregroundStyle(.primery)
                        .frame(width: 35, height: 35)
                        .background(Color(red: 0.9, green: 0.91, blue: 0.98))
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    
                    VStack(alignment: .leading){
                        Text("Enter Your Name-string")
                            .font(Font.custom("Space Grotesk", size: 10))
                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.6))
                        
                        TextField("", text: $appleId)
                            .font(.custom("SpaceGrotesk-medium", size: 14))
                            .foregroundColor(.white)
                        
                        Divider()
                            .frame(width: 243, height: 0.6)
                            .background(Color(red: 0.86, green: 0.86, blue: 0.86))
                    }
                }.frame(width: 325, height: 50, alignment: .center)
                
                HStack(spacing:15){
                    Image(systemName: "person.fill")
                        .foregroundStyle(.primery)
                        .frame(width: 35, height: 35)
                        .background(Color(red: 0.9, green: 0.91, blue: 0.98))
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    
                    VStack(alignment: .leading){
                        Text("Enter Your Email-string")
                            .font(Font.custom("Space Grotesk", size: 10))
                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.6))
                        
                        TextField("", text: $appleId)
                            .font(.custom("SpaceGrotesk-medium", size: 14))
                            .foregroundColor(.white)
                        
                        Divider()
                            .frame(width: 243, height: 0.6)
                            .background(Color(red: 0.86, green: 0.86, blue: 0.86))
                    }
                }.frame(width: 325, height: 50, alignment: .center)
                
                HStack(spacing:15){
                    Image(systemName: "lock")
                        .foregroundStyle(.primery)
                        .frame(width: 35, height: 35)
                        .background(Color(red: 0.9, green: 0.91, blue: 0.98))
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    
                    VStack(alignment: .leading){
                        Text("Password-string")
                            .font(Font.custom("Space Grotesk", size: 10))
                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.6))
                        
                        SecureField("", text: $password)
                            .font(.custom("SpaceGrotesk-medium", size: 14))
                            .foregroundColor(.white)
                        
                        Divider()
                            .frame(width: 243, height: 0.6)
                            .background(Color(red: 0.86, green: 0.86, blue: 0.86))
                    }
                    
                    Image(systemName: "eye.slash")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .offset(x:-35)
                    
                }.frame(width: 301, height: 50, alignment: .center)
                    .padding()
                
                
                
                VStack{
                    
                    Button(action:{
                        isActive = true
                    },
                           label: {
                        
                        ZStack{
                            
                            HStack{
                                Text("Create Account-string")
                                    .bold()
                                    .padding(.vertical)
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.title3)
                                    .frame(width: 311, height: 50, alignment: .center)
                                    .background(Color(.primery))
                                    .cornerRadius(10)
                                
                            }
                        }
                    })
                    
                    .fullScreenCover(isPresented: $isActive){
                        ProfileLogout()}
                }
                
                Spacer()
                
            }
            
            
        }
        
        
    }
}

#Preview {
    CreateAccountView()
}
