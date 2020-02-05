//
//  ContentView.swift
//  LoginScreenTutorial
//
//  Created by Duy Bui on 11/9/19.
//  Copyright © 2019 iosAppTemplates. All rights reserved.
//
import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack() {
            Text("Login")
                .font(.largeTitle).foregroundColor(Color.white)
                .padding(.top, 50)
                .padding(.bottom, 100)


            VStack(alignment: .leading, spacing: 15) {
                TextField("Email", text: self.$email)
                    .padding()
                    .background(Color.themeTextField)
                    .cornerRadius(10.0)
                
                SecureField("Senha", text: self.$password)
                    .padding()
                    .background(Color.themeTextField)
                    .cornerRadius(10.0)
            }.padding([.leading, .trailing], 27.5)
            
            Button(action: {}) {
                Text("Entrar")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 360, height: 50)
                    .background(Color.green)
                    .cornerRadius(10.0)
        
            }.padding(.top, 20)
            
            Spacer()
            Button(action: {}) {
                Text("Nao possui uma conta? Cadastrar")
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
            }
            
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all))
                
        
    }
}

extension Color {
    static var themeTextField: Color {
        return Color(red: 220.0/255.0, green: 230.0/255.0, blue: 230.0/255.0, opacity: 1.0)
    }
}
