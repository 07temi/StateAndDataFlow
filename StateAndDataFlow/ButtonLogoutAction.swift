//
//  ButtonLogoutAction.swift
//  StateAndDataFlow
//
//  Created by Артем Черненко on 23.02.2022.
//

import SwiftUI

struct ButtonLogoutAction: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Button(action: user.logout) {
            Text("logout")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}
