//
//  ContentView.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/07/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    var body: some View {
        ZStack(alignment: .topLeading) {
            MainTabView()
            
            SideMenuView()
                .frame(width: 300)
                .offset(x: showMenu ? 0: -300, y: 0)
                .background(showMenu ? Color.white : Color.clear)
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    showMenu.toggle()
                } label: {
                    Circle()
                        .frame(width: 32, height: 32)
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
        
    }
}
