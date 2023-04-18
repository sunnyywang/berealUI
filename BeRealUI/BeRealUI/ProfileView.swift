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
            }
        } .navigationBarBackButtonHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
