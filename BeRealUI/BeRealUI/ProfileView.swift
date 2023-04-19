//
//  ProfileView.swift
//  BeRealUI
//
//  Created by Sunny Wang on 4/18/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    HStack (spacing: 120){
                        NavigationLink(destination: ContentView()) {
                            Image(systemName: "arrow.left")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                                .padding(.leading, 11)
                        }
                        Text("Profile")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                        Image(systemName: "ellipsis")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 10)
                            .foregroundColor(.white)
                            .padding(.trailing, 40)
                            .padding(.top, 2)
                    }
                    Image("avatar")
                        .resizable()
                        .padding(.top, 15)
                        .padding(.trailing, 15)
                        .frame(width: 170, height: 170)
                        .padding(.trailing, 12)
                        .aspectRatio(contentMode: .fit)
                    Text("Sunny Wang")
                        .padding(.top, 10)
                        .padding(.trailing,22)
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.white)
                    Text("sunnywang")
                        .padding(.trailing,22)
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(.white)
                    HStack {
                        Text("Your Memories")
                            .padding(.trailing,130)
                            .padding(.top, 10)
                            .font(.system(size: 22, weight: .semibold))
                            .foregroundColor(.white)
                        Text("Only visible to you.")
                            .padding(.top, 10)
                            .font(.system(size: 10, weight: .semibold))
                            .foregroundColor(.gray)
                    }
                    Image("IMG_1214") //placeholder...hopefully
                        .resizable()
                        .frame(width: 420, height: 250)
                    Button {
        
                    } label: {
                        Text("\u{1F517} BeRe.al/sunnywang")
                            .padding(.top, 30)
                            .padding(.leading, 2)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.white)
                    }
                    Spacer()
                }

            }

        } .navigationBarBackButtonHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
