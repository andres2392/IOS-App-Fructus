//
//  FructusApp.swift
//  Fructus
//
//  Created by PDWS on 8/23/22.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else {
                ContentView()
            }
        }
    }
}
