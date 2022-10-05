//
//  RegisterView.swift
//  LegoBlend
//
//  Created by Vian du Plessis on 2022/10/05.
//

import SwiftUI

struct RegisterView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var showPass = false
    var body: some View {
        VStack {
            VStack {
                Image("register_top")
                
                HStack() {
                    Image("register_bottom_left")
                    
                    Image("register_bottom_right")
                }
                .padding(.leading, 30)
//              HStack End
            }
            .padding(.bottom, 30)
//          VStack End
            
            
            Text("Please complete the form below to register")
                .frame(maxWidth: .infinity)
                .padding(.bottom, 30)
            
            VStack(spacing: 25) {
                VStack {
                    Text("Email Address")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    TextField("johndoe@example.com", text: $email)
                        .padding(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("secondary_two"), lineWidth: 2))
                }
//              VStack End

                VStack {
                    Text("Password")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    if !showPass {
                        HStack {
                            SecureField("", text: $password)

                            Image(systemName: "eye")
                                .onTapGesture {
                                    showPass.toggle()
                                }
                        }
                        .padding(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("secondary_two"), lineWidth: 2))
//                      HStack End
                    } else {
                        HStack {
                            TextField("Enter some text", text: $password)

                            Image(systemName: "eye")
                                .onTapGesture {
                                    showPass.toggle()
                                }
                        }
                        .padding(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("secondary_two"), lineWidth: 2))
//                      HStack End
                    }
                }
//              VStack End
            }
//          VStack End
            
            Spacer()
            
            VStack(alignment: .trailing) {
                    Button("Register") {
//                            Functionality
                    }
                    .padding(.trailing, 30)
                    .padding(.leading, 30)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10).stroke(Color("primary_three"), lineWidth: 2)
                    )

                Text("Already have an account? Login In Here")
                    .frame(alignment: .trailing)
                    .font(.footnote)
            }
            .frame(maxWidth: .infinity,alignment: .trailing)
//          VStack End
        }
        .padding(20)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
