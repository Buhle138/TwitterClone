//
//  FeedView.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/07/21.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) {_ in
                       TweetRowView()
                            .padding()
                    }
                }
            }
            Button {
                print("show new tweet view")
            } label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding() 

        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
