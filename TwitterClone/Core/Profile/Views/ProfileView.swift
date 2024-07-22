//
//  ProfileView.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/07/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            headerView
            
            actionButton
           
            VStack(alignment: .leading, spacing: 4) {
                
                
                HStack {
                    Text("Heath ledger")
                        .font(.title).bold()
                    
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(Color(.systemBlue))
                }
            }
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 16, y: 12)
                }

                Circle()
                    .frame(width: 72, height: 72 )
                .offset(x: 16, y: 24)
            }
        }
        
        .frame(height: 96)
    }
    
    
    var actionButton: some View {
        HStack(spacing: 12) {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title2)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }

        
        }
        .padding(.trailing)
    }
    
}
