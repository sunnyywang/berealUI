//
//  FriendView.swift
//  BeRealUI
//
//  Created by Sunny Wang on 4/18/23.
//

import SwiftUI

struct FriendView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    HStack (spacing: 55){
                        Image(systemName: "black")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 30, height: 20)
                            .padding(.leading, 15)
                            .padding(.trailing, 15)
                            .padding(.top, 12)
                        Image("IMG_1132") //"BeReal."
                            .resizable()
                            .padding(.top, 18)
                            .padding(.leading, 20)
                            .frame(width: 120, height: 43)
                            .aspectRatio(contentMode: .fit)
                        NavigationLink(destination: ContentView()) {
                            Image(systemName: "arrow.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                                .padding(.leading, 50)
                                .padding(.top, 20)
                        }
                    }
                        Image("IMG_1205") //placeholder
                            .resizable()
                            .frame(width: .infinity, height: 750)
                }
                
            }
        } .navigationBarBackButtonHidden(true)
    }
}

struct FriendView_Previews: PreviewProvider {
    static var previews: some View {
        FriendView()
    }
}
