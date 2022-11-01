//
//  LegoBlendApp.swift
//  LegoBlend
//
//  Created by Vian du Plessis on 2022/09/19.
//

import SwiftUI

@main
struct LegoBlendApp: App {
    @AppStorage("onBoarding") var showOnBoarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if showOnBoarding {
                OnboardingView()
            } else {
                SplashView()
            }
        }
    }
}
