//
//  User.swift
//  MobileApp
//
//  Created by Rinesa on 28.2.24.
//

import Foundation

struct User: Codable { // Conforming to Codable protocol which includes Encodable
    var username: String
    var password: String
}
