//
//  LoginView.swift
//  homeworkSwiftUI
//
//  Created by Андрей Васильев on 26.01.2023.
//

import SwiftUI

struct LoginView: View {
    @Binding var logged: Bool
    
    @State private var login: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            
            VStack {
                Image("Logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .shadow(radius: 12)
                    .padding(.top, 100)
                
                VStack(spacing: -0.5) {
                    TextField("Email or phone", text: $login)
                        .modifier(TextFielder())
                    SecureField("Password", text: $password)
                        .modifier(TextFielder())
                }
                .cornerRadius(10)
                .padding(.top, 60)
                .padding(16)
                
                Button(action: {
                    self.logged = true
                }) {
                    Text("Log In")
                        .frame(height: 50)
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background(Color("ButtonColor"))
                .cornerRadius(10)
                .padding(16)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(logged: .constant(false))
    }
}
