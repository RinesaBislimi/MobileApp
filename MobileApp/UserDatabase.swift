//
//  UserDatabase.swift
//  MobileApp
//
//  Created by Rinesa on 28.2.24.
//

import SwiftUI

class UserDatabase: ObservableObject {
    @Published var users: [User] = []

    func addUser(username: String, password: String) {
        let newUser = User(username: username, password: password)
        users.append(newUser)
    }
}
