//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/07/21.
//

import SwiftUI
import Firebase

@main


struct TwitterCloneApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init()  {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView {
              ContentView()
                
                  
            }
            .environmentObject(viewModel)
        }
    }
}
