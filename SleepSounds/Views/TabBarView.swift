//
//  TabBarView.swift
//  SleepSounds
//
//  Created by Aljwhra Alnasser on 07/12/2023.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
        // Set UITabBar appearance
        UITabBar.appearance().barTintColor = UIColor(Color("PrimeryColor"))
    }
    
    var body: some View {
        TabView {
            DiscoverView()
                .tabItem {
                    Image(systemName: "moon.stars.fill")
                    Text("Discover")
                }
            ProfileLogin()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .background(Color("PrimeryColor")) // Set the background color of the TabView
    }
}

#Preview {
    TabBarView()
    .environmentObject(AudioManager())
    
}
