//
//  LoginView.swift
//  ToDoList
//
//  Created by Pavel Bohomolnyi on 07/05/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List",
                           subTitle: "Get things done",
                           angle: 15,
                           backgroundColor: .pink)
                
                // Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // Attempt  log in
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            Text("Log In")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                    .padding(8)
                }
                .offset(y: -50)
                
                // Create Account
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create  An Account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
