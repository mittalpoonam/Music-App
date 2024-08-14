//
//  ContentView.swift
//  Music App
//
//  Created by poonam mittal on 14/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var expandSheet = false
    @Namespace private var animation
    
    @StateObject var songManager = SongManager()
    
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .environmentObject(songManager)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.ultraThickMaterial, for: .tabBar)
            
           Search()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            .environmentObject(songManager)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(.ultraThickMaterial, for: .tabBar)
            
            Text("playlists")
                .tabItem {
                    Image(systemName: "play.rectangle.on.rectangle")
                    Text("Playlists")
                }
            
            
            .environmentObject(songManager)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(.ultraThickMaterial, for: .tabBar)
        }
        .tint(.white)
        .safeAreaInset(edge: .bottom){
            
            if !songManager.song.title.isEmpty {
                CustomBottomSheet()
            }
            
           
        }
        .overlay {
            if expandSheet {
                MusicView(expandSheet: $expandSheet, animation: animation)
                    .environmentObject(songManager)
            }
        }
    }
    
    @ViewBuilder
    func CustomBottomSheet() -> some View {
        ZStack {
            if expandSheet {
                Rectangle()
                    .fill(.clear)
                
            }else{
                Rectangle()
                    .fill(.ultraThickMaterial)
                    .overlay {
                        MusicInfo(expandSheet: $expandSheet, animation: animation)
                            .environmentObject(songManager)
                        
                    }
                    .matchedGeometryEffect(id: "BACKGROUNDVIEW", in: animation)
            }
        }
        .frame(height: 80)
        
        .offset(y: -49)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
