//
//  FeedView.swift
//  homeworkSwiftUI
//
//  Created by Андрей Васильев on 26.01.2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors: [.blue, .yellow, .green, .blue, .purple, .cyan]), center: .center, angle: Angle(radians: 5))
                .ignoresSafeArea(edges: .top)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
