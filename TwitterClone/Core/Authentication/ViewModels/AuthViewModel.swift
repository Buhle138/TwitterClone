//
//  AuthViewModel.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/07/28.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject{
    //If this variable below contains a user or is not nil then we will show that user the main user interface. with their details
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is  \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String) {
        print("DEBUG: Login with email \(email)")
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else {return}
            self.userSession = user
            
            print("User registered successfully")
            
            //storing the user data into the firestore database
            let data = [
                "email": email,
                "username": username.lowercased(),
                "fullname": fullname,
                "uid": user.uid
            ]
            
            Firestore.firestore().collection("users")
                .document(user.uid).setData(data) { _ in
                    print("DEBUG:  Did upload user data")
                }
        }
    }
    
    func signOut(){
        //sets user session to nil
        userSession = nil
        
        //signs user out on the backend/On the server
        try? Auth.auth().signOut()
    }
}

