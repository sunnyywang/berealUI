//
//  ContentView.swift
//  BeRealUI
//
//  Created by Sunny Wang on 4/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    HeaderView()
                    NavigationLink( destination: PostView()) {
                        VStack {
                            Image("IMG_1144")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140, height: 150)
                                .cornerRadius(13)
                            Text("Add a caption...")
                                .padding(.leading, 2)
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(.white)
                            HStack {
                                Text("29 sec late")
                                    .font(.system(size: 10, weight: .bold))
                                    .foregroundColor(.gray)
                                Image(systemName: "ellipsis")
                                    .font(.system(size: 13, weight: .bold))
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    Spacer()
                    FeedView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

