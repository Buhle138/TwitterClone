//
//  UserService.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/08/03.
//

import Firebase
import FirebaseFirestoreSwift

struct UserService {
    
    //this function below can only fetch one user at a time but can't fetch multiple users
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
    
    func fetchUsers(completion: @escaping([User]) -> Void) {
        var users = [User]() 
        Firestore.firestore().collection("users").getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
        
            
            documents.forEach { document in
                guard let user = try? document.data(as: User.self) else { return }
                users.append(user)
            }
          
        }
    }
    
    
}

