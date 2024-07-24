//
//  UserStatsView.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/07/24.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
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
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
