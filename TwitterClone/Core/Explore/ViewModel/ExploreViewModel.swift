//
//  ExploreViewModel.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/08/06.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    let service = UserService()
    
    
    init () {
        fetchUsers()
    }
    
    func fetchUsers() {
        service.fetchUsers { users in
            self.users = users
            
            print("DEBUG: Users are \(users)")
        }
    }
}
