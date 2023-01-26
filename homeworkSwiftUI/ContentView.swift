//
//  ContentView.swift
//  homeworkSwiftUI
//
//  Created by Андрей Васильев on 26.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLogin = false
    
    var body: some View {
        TabView() {
            FeedView()
                .tabItem {
                    Label("Feed", systemImage: "house.fill")
                }
            
            if isLogin {
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill.checkmark")
                    }
            } else {
                LoginView(logged: $isLogin)
                    .tabItem {
                        Label("Login", systemImage: "person")
                    }
            }
            PlayerView()
                .tabItem {
                    Label("Player", systemImage: "music.quarternote.3")
                }
            VideoView()
                .tabItem {
                    Label("Video", systemImage: "play.rectangle.fill")
                }
            
            FavoriteCharactersView()
                .tabItem {
                    Label("Favorite", image: "cheburashka")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
