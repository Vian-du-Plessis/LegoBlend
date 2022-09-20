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
    let firstWord = [
        Logo(name: "L"),
        Logo(name: "E"),
        Logo(name: "G"),
        Logo(name: "O")
    ]
    let secondWord = [
        Logo(name: "B"),
        Logo(name: "l_small"),
        Logo(name: "E"),
        Logo(name: "n"),
        Logo(name: "d")
    ]
    var body: some View {
        HStack {
            ForEach(firstWord) { item in
                Image(item.name)
                    .offset(x: isExploded ? (Double.random(in: -1...1) * 500) : 0, y: isExploded ? (Double.random(in: -1...1) * 500) : 0)
                    .opacity(isExploded ? 0 : 1)
                    .scaleEffect(isExploded ? 13 : 1)
                    .animation(.easeInOut.speed(0.3), value: isExploded)
            }
        }
        
        HStack {
            ForEach(secondWord) { item in
                Image(item.name)
                    .offset(x: isExploded ? (Double.random(in: -1...1) * 500) : 0, y: isExploded ? (Double.random(in: -1...1) * 500) : 0)
                    .opacity(isExploded ? 0 : 1)
                    .scaleEffect(isExploded ? 13 : 1)
                    .animation(.easeInOut.speed(0.3), value: isExploded)
            }
        }        
        Button("hey") {
            isExploded.toggle()
        }
    }
//        VStack {
//            Spacer()
//            ZStack {
//                ForEach(0..<75) { _ in
//                    Rectangle()
//                        .rotation(Angle(degrees: Double.random(in: 0..<360)))
//                        .frame(width: 40, height: 20)
//                        .foregroundColor(.indigo)
//                        .offset(x: isExploded ? (Double.random(in: -1...1) * 500) : 0, y: isExploded ? (Double.random(in: -1...1) * 500) : 0)
//                        .opacity(isExploded ? 0 : 1)
//                        .animation(.easeInOut.speed(0.3), value: isExploded)
//                        .padding()
//                }
//                Rectangle()
//                    .frame(width: 300, height: 300)
//                    .foregroundColor(.indigo)
//                    .opacity(isExploded ? 0 : 1)
//                    .animation(.easeInOut.speed(0.3), value: isExploded)
//                    .padding()
//                Spacer()
//
//                Button("Hey") {
//                    isExploded.toggle()
//                }
//            }
//        }
//        Text("Hello, world!")
//            .padding()
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
