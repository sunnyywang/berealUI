//
//  PostsView.swift
//  BeRealUI
//
//  Created by Sunny Wang on 4/16/23.
//

import SwiftUI

struct PostsView: View {
    var body: some View {
        VStack {
            PostHeaderView()
           Spacer()
            ZStack (alignment: .topLeading) {
                VStack (alignment: .leading){
                    Image("IMG_1143")
                        .resizable()
                        .scaledToFit()
                        .frame(width: .infinity, height: 500)
                        .cornerRadius(13)
                        .overlay(
                            VStack(spacing: 16){
                                Image(systemName: "bubble.left.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .shadow(radius: 8, y:3)
                                Image(systemName: "smiley.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .shadow(radius: 8, y:3)

                            }.padding(20)
                         , alignment: .bottomTrailing
                                
                        )
                    Text("first day of academy!")
                        .padding(.leading, 8)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
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

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

