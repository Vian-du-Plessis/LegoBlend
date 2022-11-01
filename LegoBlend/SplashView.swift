//
//  ContentView.swift
//  LegoBlend
//
//  Created by Vian du Plessis on 2022/09/19.
//

import SwiftUI

struct Logo : Identifiable{
   let id = UUID()
   let name: String
}

struct SplashView: View {
    @State var isActive = false
    @AppStorage("onBoarding") var showOnBoarding: Bool = true
    @State private var isExploded = false
    @State private var scaleAnimation = false
    let firstWord = [
        Logo(name: "l_big"),
        Logo(name: "e"),
        Logo(name: "g"),
        Logo(name: "o")
    ]
    let secondWord = [
        Logo(name: "b"),
        Logo(name: "l_small"),
        Logo(name: "e"),
        Logo(name: "n"),
        Logo(name: "d")
    ]
    let blocks = [
        Logo(name: "green_lego"),
        Logo(name: "orange_lego"),
        Logo(name: "blue_lego"),
        Logo(name: "red_lego")
    ]
    @State var xValue = 0.0
    @State var yValue = 0.0
    var body: some View {
        if isActive {
            SettingsView()
            
        } else {
            ZStack {
                ForEach(1..<20) {_ in
                    Image(blocks[Int.random(in: 0..<blocks.count)].name)
                        .frame(width: 20, height: 20)
                        .scaleEffect(Double.random(in: 1...2))
                        .position(x: scaleAnimation ? (Double.random(in: -1...3) * 500) : (Double.random(in: -3...3) * 200), y: scaleAnimation ? (Double.random(in: -1...5) * 500) : (Double.random(in: -3...3) * 100))
                        .animation(.easeInOut.speed(0.1).repeatForever(autoreverses: true), value: scaleAnimation)
                }

                VStack {
                    HStack {
                        Image("tr_splash")
                            .scaleEffect(scaleAnimation ? Double.random(in: 1...1.5) : 1)
                            .animation(.easeInOut.speed(0.6).repeatForever(), value: scaleAnimation)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
    //              First HStack - Top Right

                    Spacer()
                  
                    HStack {
                        ForEach(firstWord) { item in
                            Image(item.name)
                                .offset(x: isExploded ? (Double.random(in: -1...1) * 500) : 0, y: isExploded ? (Double.random(in: -1...1) * 500) : 0)
                                .opacity(isExploded ? 0 : 1)
                                .scaleEffect(isExploded ? 13 : 1)
                                .animation(.easeInOut.speed(0.1), value: isExploded)
                                .scaleEffect(scaleAnimation ? Double.random(in: 1...1.2) : 1 )
                                .animation(.easeInOut.speed(0.1).repeatForever(autoreverses: true), value: scaleAnimation)
                        }
                    }
                    .padding(15)
    //              Second HStack - Logo
                    
                    HStack {
                        ForEach(secondWord) { item in
                            Image(item.name)
                                .offset(x: isExploded ? (Double.random(in: -1...1) * 500) : 0, y: isExploded ? (Double.random(in: -1...1) * 500) : 0)
                                .opacity(isExploded ? 0 : 1)
                                .scaleEffect(isExploded ? 13 : 1)
                                .animation(.easeInOut.speed(0.1), value: isExploded)
                                .scaleEffect(scaleAnimation ? Double.random(in: 1...1.5) : 1 )
                                .animation(.easeInOut.speed(0.1).repeatForever(), value: scaleAnimation)
                        }
                    }
                    .padding(15)
                    .onAppear {
                        scaleAnimation = true
                    }
    //              Third HStack - Logo
                    
                    Spacer()
                    
                    HStack {
                        Image("bl_splash")
                            .scaleEffect(scaleAnimation ? Double.random(in: 1...1.5) : 1)
                            .animation(.easeInOut.speed(0.6).repeatForever(), value: scaleAnimation)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
    //              Fourth HStack - Bottom Left
                }
            }
            .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            self.isExploded = true
                            self.isActive = true
                        }
                    }
            }
        }
    }
}

struct Previews_SplashView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
