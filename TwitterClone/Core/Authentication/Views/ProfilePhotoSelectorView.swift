//
//  ProfilePhotoSelectorView.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/07/29.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    var body: some View {
        VStack {
            AuthenticationHeaderView(title1: "Setup your account", title2: "Add a profile photo")
            
            Button {
                print("Pick image here...")
            } label: {
                Image("addProfile")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(Color(.systemBlue))
                    .scaledToFill()
                    .frame(width: 180, height: 180)
                    .padding(.top, 44)
            }

            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
