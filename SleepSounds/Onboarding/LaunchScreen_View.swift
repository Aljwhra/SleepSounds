//
//  LaunchScreen_View.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 20/11/2023.
//

import SwiftUI

struct LaunchScreen_View: View {
    
    
    @State private var isActive = false
    @State private var size = 0.4
    @State private var opacity = 0.5
    
    var body: some View {
        ZStack{
            
            if isActive{
              //  OnboardingView()
            }else {
                Color("backColor")
                    .ignoresSafeArea()
          
                VStack{
                    
                    Image("Logo")
                        .resizable()
                        .frame(width:104, height: 126)
                      
                    
                    VStack{
                      
                        Text("Sleep Sounds ")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white.opacity(0.90))
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)){
                            self.size = 0.8
                            self.opacity = 1.0
                        }
                    }
                }
                
                .ignoresSafeArea()
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    LaunchScreen_View()
}
