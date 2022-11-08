//
//  swiftUiCrytpoApp.swift
//  swiftUiCrytpo
//
//  Created by pc on 19/10/22.
//

import SwiftUI

@main
struct swiftUiCrytpoApp: App {
    
    @State var vm = HomeViewModel()
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
//                CircleButtonAnimationView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
            
        }
    }
}
