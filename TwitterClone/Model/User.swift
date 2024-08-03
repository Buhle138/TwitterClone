//
//  User.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/08/03.
//

import FirebaseFirestoreSwift //Decoding the data coming from firebasefirestore

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
