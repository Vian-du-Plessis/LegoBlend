import SwiftUI

struct OnboardingView: View {
    @State private var onboardingIndex = 0
    @State private var rotateAnimation = false
    var body: some View {
        VStack {
            HStack {
                Image( onboardingIndex == 0 ? "blue_small_circle_left" : "pink_small_circle_left" )
                
                Spacer()
                
                Image( onboardingIndex == 0 ? "pink_big_circle_right" : "blue_big_circle_right")
            }
            //          HStack End
            
            VStack {
                Image(onboardingIndex == 0 ? "ob_top_one" : "ob_top_two")
                
                Image(onboardingIndex == 0 ? "ob_middle_one" : "ob_middle_two")
                    .rotationEffect( rotateAnimation ?  .degrees(Double.random(in: 10...30)) : .degrees(0) )
                    .animation(.easeInOut.speed(0.15).repeatForever(autoreverses: true), value: rotateAnimation)
                    .onAppear {
                        rotateAnimation.toggle()
                    }
                Image(onboardingIndex == 0 ? "ob_bottom_one" : "ob_botom_two")
            }
            //          VStack End
            
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
                    onboardingIndex = onboardingIndex + 1
                }
                .padding(.trailing, 15)
            }
            .padding(.bottom, 10)
//          HStack End
        }
//      VStack End
    }
}
