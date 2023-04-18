//
//  PostHeaderView.swift
//  BeRealUI
//
//  Created by Sunny Wang on 4/16/23.
//

import SwiftUI

struct PostHeaderView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                    }
                label: {
                    Image("avatar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                        .padding(.leading, 45)
                }
                    VStack(alignment: .leading) {
                        Text("sunnywang")
                            .font(.system(size: 18, weight: .bold))
                            .font(.callout)
                            .foregroundColor(.white)
                            //      Text("Curtis Media Center")
                            // .font(.system(size: 14, weight: .regular))
                         //   .foregroundColor(.gray)
                        Text("4 min late")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    }
                    .padding(.leading, 3)
                    .padding(.trailing, 190)
                    Button {
                    } label: {
                        Image(systemName: "ellipsis")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 20)
                            .foregroundColor(.gray)
                            .padding(.trailing, 40)
                    }
                }
            }
            .padding(.horizontal, 6)
        }
    }
}

struct PostHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
