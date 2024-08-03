//
//  UserService.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/08/03.
//

import Firebase

struct UserService {
    func fetchUser(withuid uid: String) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let data = snapshot?.data() else {return}
                print("DEBUG: User data is \(data)")
            }
    }
}

