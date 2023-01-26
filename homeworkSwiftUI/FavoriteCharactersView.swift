//
//  FavoriteCharactersView.swift
//  homeworkSwiftUI
//
//  Created by Андрей Васильев on 26.01.2023.
//

import SwiftUI

struct FavoriteCharactersView: View {
    var body: some View {
        NavigationView {
            List(data) { post in

                NavigationLink {
                    FavoriteCharactersDetailsView(post: post)
                } label: {
                   FavoriteCharactersRowView(post: post)
                }
            }
            .navigationTitle("Favorite Characters")
            .listStyle(.plain)
        }
    }
}

struct FavoriteCharactersView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteCharactersView()
    }
}
