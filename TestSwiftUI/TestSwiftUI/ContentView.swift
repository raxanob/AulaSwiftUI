//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Rayane Xavier on 09/06/20.
//  Copyright © 2020 Rayane Xavier. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading, spacing: 16){
                VStack(alignment: .leading, spacing: 16) {
                    Text("Login")
                        .font(.system(size: 25))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore!")
                        .font(.system(size:18))
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width-30)
                }
                .frame(width: UIScreen.main.bounds.width-30)
                
                VStack(alignment: .leading, spacing: 16){
                    Text(/*@START_MENU_TOKEN@*/"Email"/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 16, weight: .regular, design: .default))
                        .foregroundColor(Color(red: 0.588, green: 0.537, blue: 0.69))
                        .multilineTextAlignment(.leading)
                    
                    if email.isEmpty {Text("Input Text").foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .padding(.horizontal, UIScreen.main.bounds.width/3)
                        .font(.system(size: 14, weight: .heavy, design: .rounded))
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(red: 0.941, green: 0.937, blue: 0.957), lineWidth: 2))
                    }
                    TextField("", text: $email)
                }
                VStack(alignment: .leading, spacing: 16){
                    Text("Password")
                        .font(.system(size: 16, weight: .regular, design: .default))
                        .foregroundColor(Color(red: 0.588, green: 0.537, blue: 0.69))
                        .multilineTextAlignment(.leading)
                    
                    if password.isEmpty {Text("Input Text").foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .padding(.horizontal, UIScreen.main.bounds.width/3)
                        .font(.system(size: 14, weight: .heavy))
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(red: 0.941, green: 0.937, blue: 0.957), lineWidth: 2))
                    }
                    TextField("", text: $password)
                }
                VStack(alignment: .trailing,spacing: 8){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 14))
                            .fontWeight(.heavy)
                            .padding()
                            .padding(.horizontal, 50.0)
                            .foregroundColor(Color(red: 0.133, green: 0.039, blue: 0.318))
                            .multilineTextAlignment(.trailing)
                    }
                    .background(Color.white)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(red: 0.941, green: 0.937, blue: 0.957), lineWidth: 2))
                    Text("Forgot password or email?")
                        .fontWeight(.bold)
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.957, green: 0.686, blue: 0.282))
                }
                .frame(width: UIScreen.main.bounds.width-30,alignment: .trailing)
            }
            .frame(width: UIScreen.main.bounds.width-30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
