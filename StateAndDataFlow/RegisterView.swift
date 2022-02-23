//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Артем Черненко on 22.02.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    @State private var color = Color.red
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            HStack{
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .onChange(of: name, perform: { newValue in
                        if name.count >= 3 {
                            color = .green
                        }
                    })
                    .foregroundColor(color)
                    .padding()
            }
            .padding(.trailing)
            Button(action: registerUser) {
                HStack{
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
                .alert("ERROR", isPresented: $showAlert) {
                    Button("Ok", action: {} )
                } message: {
                    Text("Invalid user name")
                }
            }
        }
    }
}

extension RegisterView {
    private func registerUser() {
        
        if name.count >= 3 {
            UserDefaults.standard.set(true, forKey: "isRegister")
            UserDefaults.standard.set(name, forKey: "userName")
        } else {
            showAlert.toggle()
        }
    }
}