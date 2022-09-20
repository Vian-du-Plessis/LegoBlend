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

struct ContentView: View {
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
    var body: some View {

        
        VStack {
        
            HStack {
                Image("tr_splash")
                    .scaleEffect(scaleAnimation ? Double.random(in: 1...1.5) : 1)
                    .animation(.easeInOut.speed(0.6).repeatForever(), value: scaleAnimation)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            GeometryReader { proxy in
                Image("floating_lg")
                    .frame(width: 10, height: 10)
                    .onAppear {
                        print(CGPoint(x: proxy.size.width, y: 0))
                    }
                
            }
            
//            Image("floating_lg")
//                .frame(width: 30, height: 30)
//                .position(x: scaleAnimation ? CGPointMake(CGFloat(arc4random_uniform(UInt32(viewWidth))), 0) : 0, y: scaleAnimation ? 0 : 0)
            
            Spacer()
          
            HStack {
                ForEach(firstWord) { item in
                    Image(item.name)
                        .offset(x: isExploded ? (Double.random(in: -1...1) * 500) : 0, y: isExploded ? (Double.random(in: -1...1) * 500) : 0)
                        .opacity(isExploded ? 0 : 1)
                        .scaleEffect(isExploded ? 13 : 1)
                        .animation(.easeInOut.speed(0.3), value: isExploded)
                        .scaleEffect(scaleAnimation ? Double.random(in: 1...1.2) : 1 )
                        .animation(.easeInOut.speed(0.6).repeatForever(autoreverses: true), value: scaleAnimation)
                }
            }
            .padding(15)
            
            HStack {
                ForEach(secondWord) { item in
                    Image(item.name)
                        .offset(x: isExploded ? (Double.random(in: -1...1) * 500) : 0, y: isExploded ? (Double.random(in: -1...1) * 500) : 0)
                        .opacity(isExploded ? 0 : 1)
                        .scaleEffect(isExploded ? 13 : 1)
                        .animation(.easeInOut.speed(0.3), value: isExploded)
                        .scaleEffect(scaleAnimation ? Double.random(in: 1...1.5) : 1 )
                        .animation(.easeInOut.speed(0.6).repeatForever(), value: scaleAnimation)
                }
            }
            .padding(15)
            .onAppear {
                scaleAnimation = true

            }
            
            Spacer()
            
            HStack {
                Image("bl_splash")
                    .scaleEffect(scaleAnimation ? Double.random(in: 1...1.5) : 1)
                    .animation(.easeInOut.speed(0.6).repeatForever(), value: scaleAnimation)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }

    }
}
