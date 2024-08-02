//
//  ProfilePhotoSelectorView.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/07/29.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    var body: some View {
        VStack {
            AuthenticationHeaderView(title1: "Setup your account", title2: "Add a profile photo")
            
            Button {
                showImagePicker.toggle()
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .foregroundColor(Color(.systemBlue))
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())

                } else {
                    Image("addProfile")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(Color(.systemBlue))
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())

                }
                    
            }
            .padding(.top, 44)
            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
               ImagePicker(selectedImage: $selectedImage)
            }

            
            Spacer()
        }
        .ignoresSafeArea()
    }
    
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
    
}

private struct ProfileImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
         
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
