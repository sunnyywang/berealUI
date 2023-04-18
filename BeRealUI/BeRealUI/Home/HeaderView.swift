//
//  HeaderView.swift
//  BeRealUI
//
//  Created by Sunny Wang on 4/16/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    NavigationLink( destination: FriendView()) {
                        Image(systemName: "person.2.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 30, height: 20)
                            .padding(.leading, 30)
                            .padding(.trailing, 66)
                            .padding(.leading, 15)
                            .padding(.top, 12)
                    }
                    Button {
                        
                    } label: {
                        Image("IMG_1132") //"BeReal."
                            .resizable()
                            .padding(.top, 18)
                            .padding(.leading, 20)
                            .frame(width: 120, height: 43)
                            .aspectRatio(contentMode: .fit)
                    }
                    NavigationLink( destination: ProfileView()) {
                        Image("IMG_0973") //avatar
                            .resizable()
                            .padding(.top, 15)
                            .padding(.trailing, 15)
                            .frame(width: 150, height: 80)
                            .padding(.trailing, 12)
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .foregroundColor(.white)
                .padding(.horizontal)
                HStack(spacing: 15) {
                    Button {
                        
                    } label: {
                        Text("My Friends")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                    }
                    Button {
                        
                    } label: {
                        Text("Discovery")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.gray)
                    }
                }
            }
        .padding(.bottom)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
