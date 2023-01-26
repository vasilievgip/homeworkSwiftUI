//
//  FavoriteCharactersRowView.swift
//  homeworkSwiftUI
//
//  Created by Андрей Васильев on 26.01.2023.
//

import SwiftUI

struct FavoriteCharactersRowView: View {
    
    var post: Post
    
    var body: some View {
        HStack {
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
                .padding(.leading, 12)
            
            VStack(alignment: .leading) {
                Text(post.name)
                    .font(.body)
                    .fontWeight(.bold)
                Text(post.title)
                    .font(.body)
            }
            .padding(.leading, 12.0)
            
            Spacer()
        }
    }
}




struct FavoriteCharactersRowView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteCharactersRowView(post: data[0])
    }
}
