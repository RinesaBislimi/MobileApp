//
//  ItemView.swift
//  MobileApp
//
//  Created by Rinesa on 27.2.24.
//

import SwiftUI

struct ItemView: View {
    let imageName: String
    let itemName: String

    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.blue)
                .font(.title)
            Text(itemName)
                .foregroundColor(.black)
                .font(.headline)
        }
        .padding()
    }
}
