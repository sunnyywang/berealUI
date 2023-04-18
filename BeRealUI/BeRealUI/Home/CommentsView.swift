//
//  CommentsView.swift
//  BeRealUI
//
//  Created by Sunny Wang on 4/18/23.
//

import SwiftUI

struct CommentsView: View {
    @State private var entry: String = ""

    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    HStack (spacing: 55){
                        NavigationLink(destination: ContentView()) {
                            Image(systemName: "arrow.left")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                        }
                        VStack {
                            Text("sunnywang's BeReal")
                                .padding(.leading, 2)
                                .font(.system(size: 17, weight: .bold))
                                .foregroundColor(.white)
                            Text("Today at 10:16:49 PM - 4 min late")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.gray)
                        }
                        Image(systemName: "ellipsis")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 20)
                    ScrollView {
                        Image("IMG_1143")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .infinity, height: 500)
                            .cornerRadius(13)
                        Text("first day of academy!")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                        Divider()
                            .frame(height: 0.5)
                            .background(Color.gray)
                        Text("Wow, it's really calm in here!")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.top, 5)
                        Text("Be the first to react with a RealMoji or to comment!")
                            .font(.system(size: 11, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.bottom, 25)
                            }
                        }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
    }
}
