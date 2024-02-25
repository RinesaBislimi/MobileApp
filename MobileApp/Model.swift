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
    Travelling(id: 0, name: "Rugove", image: "eksperienca1", rating: 2, location: "Peje"),
    Travelling(id: 1, name: "Pamje nga Kryeqyteti", image: "eksperienca2", rating: 5, location: "Prishtine"),
    Travelling(id: 2, name: "Pamje Nga Prizreni", image: "eksperienca3", rating: 3,location: "Prizren")
]
