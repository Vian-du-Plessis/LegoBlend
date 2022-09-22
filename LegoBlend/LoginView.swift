//
//  LoginView.swift
//  LegoBlend
//
//  Created by Elzine Brummelkamp on 2022/09/22.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var showPass = false
    var body: some View {
        VStack {
            Image("login_top")
            
            HStack() {
                Image("login_bottom_left")
                
                Image("login_bottom_right")
            }
            .padding(.leading, 30)
            
            Text("Log In with your email and password below")
                .frame(maxWidth: .infinity)
                .padding(20)
            
            VStack {
                Text("Email Address")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                TextField("johndoe@example.com", text: $email)
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
                
                Text("Password")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                if showPass {
                    SecureField("johndoe@example.com", text: $password)
                        .padding(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))

                } else {
                    HStack {
                        TextField("Enter some text", text: $password)

                        Image(systemName: "person")
                    }
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
                }
                
                Button("Toggle") {
                    showPass.toggle()
                }
                
                            }
            .padding(20)
            
        }
    }
}
