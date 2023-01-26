//
//  FavoriteCharactersDetailsView.swift
//  homeworkSwiftUI
//
//  Created by Андрей Васильев on 26.01.2023.
//

import SwiftUI

struct FavoriteCharactersDetailsView: View {

    var post: Post

    var body: some View {
        ScrollView {
            Text(post.title)
                .font(.largeTitle)
                .lineLimit(nil)
                .padding(.horizontal, 16.0)
            post.image
                .resizable()
                .scaledToFit()
                .padding(.top, 12)
                .shadow(radius: 10)

            VStack(alignment: .leading) {
                Text(post.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)


                Divider()

                Text(post.description)
            }
            .padding()
        }
        .background(Color(.systemGray6))
    }
}

struct FavoriteCharactersDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteCharactersDetailsView(post: data[0])
    }
}
