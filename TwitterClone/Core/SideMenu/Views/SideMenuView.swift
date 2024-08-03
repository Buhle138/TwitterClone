//
//  SideMenuView.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/07/24.
//

import SwiftUI

struct SideMenuView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {

        if let user = authViewModel.currentUser
       
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

