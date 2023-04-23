//
//  PostView.swift
//  BeRealUI
//
//  Created by Sunny Wang on 4/16/23.
//

import SwiftUI
import UIKit


struct PostView: View {
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
                            Text("My BeReal")
                                .padding(.leading, 2)
                                .font(.system(size: 17, weight: .bold))
                                .foregroundColor(.white)
                            Text("Today at 9:36:34 PM - 29 sec late")
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
                        Image("IMG_1195")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .infinity, height: 500)
                            .cornerRadius(13)
                        Text("so meta")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                        Divider()
                            .frame(height: 0.5)
                            .background(Color.gray)
                        HStack {
                            VStack {
                                Image("IMG_0503")
                                    .resizable()
                                    .padding(.leading, 11)
                                    .frame(width: 85, height: 55)
                                    .padding(.trailing, 12)
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(Circle())
                                Text("alecjn")
                                    .font(.system(size: 10, weight: .bold))
                                    .foregroundColor(.white)
                                    .padding(.bottom, 5)
                            }
                            Spacer()
                        }
                        Divider()
                            .frame(height: 0.5)
                            .background(Color.gray)
                        Text("No comments yet....")
                            .font(.system(size: 11, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.top, 25)
                            .padding(.bottom, 25)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}


struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
