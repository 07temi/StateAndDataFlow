//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Артем Черненко on 22.02.2022.
//

import SwiftUI
//import CoreData

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()

    var body: some View {
        VStack(spacing: 40){
            Text("Hi, \(user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            ButtonView(timer: timer)
            Spacer()
            
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
            Spacer()
        }
    }
}

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text("\(timer.buttonTitle)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}
