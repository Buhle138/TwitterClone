//
//  UserService.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/08/03.
//

import Firebase
import FirebaseFirestoreSwift

struct UserService {
    func fetchUser(withuid uid: String, completion: @escaping(User) -> Void) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let snapshot = snapshot else {return}
             
                guard let user = try? snapshot.data(as: User.self) else { return }
                
                completion(user)
                
                print("DEBUG: Username is \(user.username)")
                print("DEBUG: Username is \(user.email)")
              
            }
    }
}

