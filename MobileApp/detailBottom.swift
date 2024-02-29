//
//  detailBottom.swift
//  MobileApp
//
//  Created by Viola on 20.2.24.
//





import SwiftUI

struct detailBottom : View {
    @EnvironmentObject var itemManager: ItemManager
    @State private var showAlert = false // State variable to control alert presentation
    var itemName: String // Added variable to hold the name of the item

    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("Description").fontWeight(.heavy)
            Text("If you're going from one place to another, you're travelling. People love to go travelling to see new places and experience different cultures.").foregroundColor(.gray)
            
            HStack(spacing: 8){
                Button(action: {
                    // Call the saveItem method when bookmark button is clicked
                    itemManager.saveItem(item: self.itemName) // Passing the item name here
                    showAlert = true // Set showAlert to true when item is saved
                }) {
                    Image(systemName: "bookmark")
                }
                
                Button(action: {
                    // Action for booking experience
                }) {
                    HStack(spacing: 6){
                        Text("Book Your Experience")
                        Image(systemName: "arrow.right.circle").renderingMode(.original)
                    }.foregroundColor(.white)
                    .padding()
                }.background(Color.blue)
                .cornerRadius(8)
            }.padding(.top, 6)
            
        }
        .padding()
        .alert(isPresented: $showAlert) { // Present alert based on showAlert state
            Alert(title: Text("Success"), message: Text("Successfully added to saved items"), dismissButton: .default(Text("OK")))
        }
    }
}
