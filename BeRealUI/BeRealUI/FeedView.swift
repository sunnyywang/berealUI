//
//  FeedView.swift
//  BeRealUI
//
//  Created by Sunny Wang on 4/16/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 30) {
                    ForEach(0..<15) { _ in
                        PostsView()
                    }
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
