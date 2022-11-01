//
//  SettingsView.swift
//  LegoBlend
//
//  Created by Vian du Plessis on 2022/10/06.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            Image("Settings")
            
            Spacer()
                
            VStack {
                Image("red_lego")
                    .resizable()
                    .frame(width: 60, height: 60)
                
                HStack {
                    Text("About Lego Blend")
                        .foregroundColor(Color("primary_one"))
                        .fontWeight(.bold)
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color("primary_one"))
                }
            }
            
            VStack {
                Image("orange_lego")
                    .resizable()
                    .frame(width: 60, height: 60)
                
                HStack {
                    Text("App Appearance")
                        .foregroundColor(Color("primary_two"))
                        .fontWeight(.bold)
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color("primary_two"))
                }
            }
            
            VStack {
                Image("green_lego")
                    .resizable()
                    .frame(width: 60, height: 60)
                
                HStack {
                    Text("About the Developer")
                        .foregroundColor(Color("primary_three"))
                        .fontWeight(.bold)
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color("primary_three"))
                }
                .onTapGesture {
                    // Function
                }
            }
            
            Spacer()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
