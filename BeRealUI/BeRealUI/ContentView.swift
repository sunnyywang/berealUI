//
//  ContentView.swift
//  BeRealUI
//
//  Created by Sunny Wang on 4/16/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = "View Profile"
        let choices = ["View Profile", "Share Profile", "Report this BeReal."]
        @State private var isMenuShown = false
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    HeaderView()
                    NavigationLink( destination: PostView()) {
                        VStack {
                            Image("IMG_1195")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140, height: 150)
                                .cornerRadius(13)
                            Text("so meta")
                                .padding(.leading, 2)
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(.white)
                            HStack {
                                Text("29 sec late")
                                    .font(.system(size: 10, weight: .bold))
                                    .foregroundColor(.gray)
                                Button { //doesn't work rip
                                    Picker("", selection: $selection) {
                                            ForEach(choices, id: \.self) {
                                                Text($0)
                                            }
                                        } .pickerStyle(.menu)
                                } label: {
                                    Image(systemName: "ellipsis")
                                        .font(.system(size: 13, weight: .bold))
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                    }
                    Spacer()
                    FeedView()
                    Spacer()
                }
            }
        } .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

