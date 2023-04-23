//
//  Post2View.swift
//  BeRealUI
//
//  Created by Sunny Wang on 4/22/23.
//

import SwiftUI

struct Post2View: View {
    @State private var image: String = "IMG_1145"
    @State private var caption: String = "headshots<3"
    var body: some View {
        VStack {
            PostHeaderView()
           Spacer()
            ZStack (alignment: .topLeading) {
                VStack (alignment: .leading){
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: .infinity, height: 500)
                        .cornerRadius(13)
                        .overlay(
                            NavigationLink(destination: CommentsView(image: $image, caption: $caption)) {
                            VStack(spacing: 16){
                                    Image(systemName: "bubble.left.fill")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .shadow(radius: 8, y:3)
                                    Image(systemName: "smiley.fill")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .shadow(radius: 8, y:3)
                                    
                                }
                            } .padding(20) , alignment: .bottomTrailing )
                    Text(caption)
                        .padding(.leading, 8)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    NavigationLink(destination: CommentsView(image: $image, caption: $caption)) {
                        Text("Add a comment...")
                            .padding(.leading, 8)
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct Post2View_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
