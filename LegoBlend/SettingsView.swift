//
//  SettingsView.swift
//  LegoBlend
//
//  Created by Vian du Plessis on 2022/10/06.
//

import SwiftUI

struct SettingsView: View {
    @State var about = false
    @State var appearance = false
    @State var developer = false
    @State private var darkMode = false
    var body: some View {
        ScrollView {
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
                        
                        Image(systemName: !about ? "chevron.right" : "chevron.down")
                            .foregroundColor(Color("primary_one"))
                            .onTapGesture{
                                about.toggle()
                                appearance = false
                                developer = false
                            }
                    }
                }
                
                if about {
                    VStack(alignment: .leading) {
                        Text("App Description:")
                            .font(.headline)
                            .foregroundColor(Color("primary_two"))
                            .padding(15)
                        
                Text("""
        Lego Blend aims to give users inspiration and ideas for their next lego builds !\n
        All builds include instructions to follow ! Users are also able to upload their builds and save other builds\n
        Browse through , save and search for some great lego builds to try out.
        \nLego Blend will also give you a lego summary including ; The total tutorials , Total builds completed and new builds
        """)
                        .foregroundColor(Color("primary_three"))
                        .padding(15)
                        
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("primary_two"), lineWidth: 2)
                    )
                }
                
                VStack {
                    Image("orange_lego")
                        .resizable()
                        .frame(width: 60, height: 60)
                    
                    HStack {
                        Text("App Appearance")
                            .foregroundColor(Color("primary_two"))
                            .fontWeight(.bold)
                        
                        Image(systemName: !appearance ? "chevron.right" : "chevron.down")
                            .foregroundColor(Color("primary_two"))
                            .onTapGesture {
                                appearance.toggle()
                                about = false
                                developer = false
                            }
                    }
                }
                
                if appearance {
                    VStack(alignment: .leading) {
                        Toggle("Dark Mode", isOn: $darkMode)
                        .foregroundColor(Color("primary_three"))
                        .padding(15)
                        
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("primary_two"), lineWidth: 2)
                    )
                }
                
                VStack {
                    Image("green_lego")
                        .resizable()
                        .frame(width: 60, height: 60)
                    
                    HStack {
                        Text("About the Developer")
                            .foregroundColor(Color("primary_three"))
                            .fontWeight(.bold)
                        
                        Image(systemName: !developer ? "chevron.right" : "chevron.down")
                            .foregroundColor(Color("primary_three"))
                            .onTapGesture {
                                developer.toggle()
                                about = false
                                appearance = false
                            }
                    }
                    .onTapGesture {
                        // Function
                    }
                }
                
                if developer {
                    VStack(alignment: .leading) {
                        Text("App Description:")
                            .font(.headline)
                            .foregroundColor(Color("primary_two"))
                            .padding(15)
                            .padding(.bottom, 0)
                        
                Text("""
        Lego Blend aims to give users inspiration and ideas for their next lego builds !\n
        All builds include instructions to follow ! Users are also able to upload their builds and save other builds\n
        Browse through , save and search for some great lego builds to try out.
        \nLego Blend will also give you a lego summary including ; The total tutorials , Total builds completed and new builds
        """)
                        .foregroundColor(Color("primary_three"))
                        .padding(15)
                        .padding(.top, 0)
                        
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("primary_two"), lineWidth: 2)
                    )
                }
                
                Spacer()
            }
            .padding(20)
            .frame(maxHeight: .infinity)
        }
        .frame(maxHeight: .infinity)
    }
    
}

struct Previews_SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
