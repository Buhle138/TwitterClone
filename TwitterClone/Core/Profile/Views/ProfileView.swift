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
           
            userInfoDetails
            
            
            
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
    
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            
            
            HStack {
                Text("Heath ledger")
                    .font(.title).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            
            Text("@joker")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Your mom favourite villian")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack (spacing: 24){
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    
                    Text("Gotham, NY")
                }
                
               
                
                HStack {
                    Image(systemName: "link")
                    
                    Text("www.thejoker.com")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            HStack (spacing: 24){
                HStack(spacing: 4) {
                    Text("807").bold()
                        .font(.subheadline)
                        .bold()
                    
                    Text("Following")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                  
                }
                
                HStack(spacing: 4) {
                    Text("6.M").bold()
                        .font(.subheadline)
                        .bold()
                    
                    Text("Followers")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    
                }
            }
            .padding(.vertical)
           
            
        }
        .padding(.horizontal)
    }
    
}
