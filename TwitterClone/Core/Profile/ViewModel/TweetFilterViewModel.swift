//
//  TweetFilterViewModel.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/07/24.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
