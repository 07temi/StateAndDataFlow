//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by Артем Черненко on 22.02.2022.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject var user: UserManager
    
    
    var body: some View {
        Group {
            if user.isRegister {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

//struct StarterView_Previews: PreviewProvider {
//    static var previews: some View {
//        StarterView()
//            .environmentObject(UserManager())
//    }
//}
