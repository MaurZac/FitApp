//
//  FitAppApp.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/13/24.
//

import SwiftUI

@main
struct FitAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                onBoardingView()
            }
            .navigationViewStyle(.stack)
        }
    }
}
