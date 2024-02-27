//
//  AdventuresTab.swift
//  MobileApp
//
//  Created by Viola on 19.2.24.
//
import SwiftUI

struct AdventuresTab: View {
    @State private var showDetail = false
    @State private var selectedAdventure: Adventure?

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(adventures) { adventure in
                    VStack(alignment: .leading, spacing: 12) {
                        Button(action: {
                            self.selectedAdventure = adventure
                            self.showDetail.toggle()
                        }) {
                            Image(adventure.image)
                                .resizable()
                                .frame(width: 200, height: 300)
                                .cornerRadius(20)
                        }
                        Text(adventure.name).fontWeight(.heavy)
                        HStack(spacing: 5) {
                            Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                            Text(adventure.location).foregroundColor(.gray)
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $showDetail) {
            if let selectedAdventure = self.selectedAdventure {
                Detail(travel: Travelling(id: selectedAdventure.id, name: selectedAdventure.name, image: selectedAdventure.image, rating: selectedAdventure.rating, location: selectedAdventure.location))
            }
        }
    }
}

struct AdventuresTab_Previews: PreviewProvider {
    static var previews: some View {
        AdventuresTab()
    }
}

struct Adventure: Identifiable {
    var id: Int
    var name: String
    var image: String
    var rating: Int
    var location: String
}

let adventures = [
    Adventure(id: 1, name: "Shpella e Gadimes", image: "adventure1", rating: 5, location: "Gadime e Poshtme"),
    Adventure(id: 2, name: "Liqeni i Batllaves", image: "adventure2", rating: 4, location: "Podujeve"),
    Adventure(id: 3, name: "Prekazi historik", image: "adventure3", rating: 3, location: "Skenderaj")
]
