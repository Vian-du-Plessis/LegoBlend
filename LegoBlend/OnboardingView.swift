//
//  OnboardingView.swift
//  LegoBlend
//
//  Created by Vian du Plessis on 2022/09/21.
//

import Foundation
import SwiftUI

struct OnboardingView: View {
    @State private var onboardingIndex = 1
    var body: some View {
        VStack {
            HStack {
                Image( onboardingIndex == 0 ? "blue_small_circle_left" : "pink_small_circle_left" )
                
                Spacer()
                
                Image( onboardingIndex == 0 ? "pink_big_circle_right" : "blue_big_circle_right")
            }
            
            VStack {
                Image(onboardingIndex == 0 ? "ob_top_one" : "ob_top_two")
                
                Image(onboardingIndex == 0 ? "ob_middle_one" : "ob_middle_two")
                
                Image(onboardingIndex == 0 ? "ob_bottom_one" : "ob_botom_two")
            }
            
            Spacer()
            
            Text("Don't know what to build next? Browse through, save and search for some ideas in the Lego Library!")
                .multilineTextAlignment(.center)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            
            Spacer()
            
            HStack {
                Button("Skip") {
                    print("hey")
                }
                .padding(.leading, 15)

                Spacer()

                Button("Continue") {

                }
                .padding(.trailing, 15)
            }
            .padding(.bottom, 10)
        }
    }
}
