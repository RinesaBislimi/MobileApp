//
//  Heart.swift
//  MobileApp
//
//  Created by Rinesa on 27.2.24.
//
import SwiftUI

struct Heart: View {
    @EnvironmentObject var itemManager: ItemManager

    var body: some View {
        NavigationView {
            VStack {
                Text("Saved Items")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                List(itemManager.savedItems, id: \.self) { item in
                    ItemView(imageName: "bookmark", itemName: item)
                }
                .padding(.top, 20)
                
                Spacer()
            }
            .navigationTitle("Saved")
        }
    }
}
