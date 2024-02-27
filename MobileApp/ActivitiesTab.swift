//
//  ActivitiesTab.swift
//  MobileApp
//
//  Created by Rinesa on 19.2.24.


import SwiftUI

struct ActivitiesTab: View {
    @State private var showDetail = false
    @State private var selectedActivity: Activity?

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(activities) { activity in
                    VStack(alignment: .leading, spacing: 12) {
                        Button(action: {
                            self.selectedActivity = activity
                            self.showDetail.toggle()
                        }) {
                            Image(activity.image)
                                .resizable()
                                .frame(width: 200, height: 300)
                                .cornerRadius(20)
                        }
                        Text(activity.name).fontWeight(.heavy)
                        HStack(spacing: 5) {
                            Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                            Text(activity.location).foregroundColor(.gray)
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $showDetail) {
            if let selectedActivity = self.selectedActivity {
                Detail(travel: Travelling(id: selectedActivity.id, name: selectedActivity.name, image: selectedActivity.image, rating: selectedActivity.rating, location: selectedActivity.location))
            }
        }
    }
}

struct ActivitiesTab_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesTab()
    }
}

struct Activity: Identifiable {
    var id: Int
    var name: String
    var image: String
    var rating: Int
    var location: String
}

let activities = [
    Activity(id: 1, name: "Germi", image: "aktivitet1", rating: 4, location: "Prishtine"),
    Activity(id: 2, name: "Muze", image: "aktivitet2", rating: 3, location: "Prishtine"),
    Activity(id: 3, name: "Ushqime tradicionale", image: "aktivitet3", rating: 5, location: "Drenas")
]
