//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Артем Черненко on 22.02.2022.
//

import Foundation
import Combine
import SwiftUI

//Возможно неправильное место для AppStorage, но мне показалось отсюда удобнее всего
//смущает только импорт SwiftUI

class UserManager: ObservableObject {
    @AppStorage("isRegister", store: .standard) var isRegister: Bool = false
    @AppStorage("userName", store: .standard) var name = ""
    
    func logout() {
        UserDefaults.standard.removeObject(forKey: "isRegister")
        UserDefaults.standard.removeObject(forKey: "userName")
    }
}

