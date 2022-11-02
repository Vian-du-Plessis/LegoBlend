//
//  BuildPreviewView.swift
//  LegoBlend
//
//  Created by Ian Jansen van Rensburg on 2022/11/02.
//

import SwiftUI

struct BuildPreviewView: View {
    let data = (1...100).map { "Item \($0)" }

    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]
    var body: some View {
        VStack {
            Image(systemName: "gear")
        }
        .padding(10)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color("primary_three"), lineWidth: 2)
        )
    }
}

struct BuildPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        BuildPreviewView()
    }
}
