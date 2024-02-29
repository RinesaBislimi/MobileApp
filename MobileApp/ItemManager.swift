//
//  ItemManager.swift
//  MobileApp
//
//  Created by Rinesa on 27.2.24.
//






import SwiftUI

class ItemManager: ObservableObject {
    @Published var savedItems: [String] = []

    func saveItem(item: String) {
        savedItems.append(item)
    }
}
