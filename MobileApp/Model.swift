//
//  Model.swift
//  MobileApp
//
//  Created by Viola on 19.2.24.
//

import Foundation
 
struct Travelling : Identifiable {
    var id : Int
    var name : String
    var image : String
    var rating : Int
    var location : String
}

var data = [
    Travelling(id: 0, name: "Fishing Time", image: "fishing", rating: 2, location: "Olongapo City"),
    Travelling(id: 1, name: "Family Camping", image: "family_camping", rating: 5, location: "Subic Bay"),
    Travelling(id: 2, name: "Travelling", image: "traveling", rating: 3,location: "Clark")
]
