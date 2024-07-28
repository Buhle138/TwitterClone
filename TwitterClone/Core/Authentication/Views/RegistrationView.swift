//
//  RegistrationView.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/07/27.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            
            AuthenticationHeaderView(title1: "Get started", title2: "Create your account")
            
            VStack(spacing: 40){
                CustomInputFields(imageName: "envelope", placeholderText: "Email", text: $email)
                
                CustomInputFields(imageName: "person", placeholderText: "Username", text: $username)
                
                CustomInputFields(imageName: "person", placeholderText: "Full name", text: $fullname)
                
                CustomInputFields(imageName: "lock", placeholderText: "password", text: $password)
            }
            .padding(32)
            
            Button {
                print("Sign un here...")
            } label: {
                Text("Sign un")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 100, x: 0, y: 0)
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
