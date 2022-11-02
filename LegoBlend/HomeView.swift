//
//  HomeView.swift
//  LegoBlend
//
//  Created by Ian Jansen van Rensburg on 2022/11/02.
//

import SwiftUI

struct HomeView: View {
    @State var searchText = ""
    let data = (1...100).map { "Item \($0)" }

    let columns = [
        GridItem(.adaptive(minimum: 60))
    ]
    var body: some View {
        ScrollView {
            VStack {
                Image("home_top")
                    .padding(.top,20)
                
                HStack {
                    Image("home_bottom_left")
                    
                    Image("home_bottom_right")
                }
                
                HStack {
                    TextField("Search ...", text: $searchText)
                        .cornerRadius(8)
                        
                    
                    Image(systemName: "magnifyingglass")
                }
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .padding(5)
                .frame(width: 250)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("primary_three"), lineWidth: 2)
                )
                .padding(.top, 20)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Categories")
                            .font(.title2.bold())
                            .foregroundColor(Color("primary_three"))
                        
                        Spacer()
                    }
                    
                    HStack {
                        ScrollView([.horizontal]){
                            HStack {
                                Text("City")
                                    .padding(5)
                                    .padding(.leading, 30)
                                    .padding(.trailing, 30)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color("primary_three"), lineWidth: 2)
                                    )
                                
                                Text("Batman")
                                    .padding(5)
                                    .padding(.leading, 30)
                                    .padding(.trailing, 30)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color("primary_three"), lineWidth: 2)
                                    )
                                
                                Text("Avatar")
                                    .padding(5)
                                    .padding(.leading, 30)
                                    .padding(.trailing, 30)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color("primary_three"), lineWidth: 2)
                                    )
                            }
                        }
                    }
                }
                .padding(.top, 20)
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .leading) {
                    HStack{
                        Text("All Items")
                            .font(.title2.bold())
                            .foregroundColor(Color("primary_one"))
                        
                        Spacer()
                    }
                    
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(data, id: \.self) { item in
                                Text(item)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .frame(maxHeight: 300)
                }
                .padding(.top, 20)

            }
            .padding(10)
        }
        .ignoresSafeArea(.all)
        .frame(maxWidth: .infinity)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
