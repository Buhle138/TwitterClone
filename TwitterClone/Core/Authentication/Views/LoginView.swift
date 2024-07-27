//
//  LoginView.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/07/27.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        //parent container
        VStack {
            
            //Header view
            VStack(alignment: .leading){
                HStack{ Spacer() }
                Text("Hello")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: .bottomRight))
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
