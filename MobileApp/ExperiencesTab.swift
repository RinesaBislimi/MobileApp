//
//  ExperiencesTab.swift
//  MobileApp
//
//  Created by Viola on 19.2.24.
//

import SwiftUI
 
struct ExperiencesTab: View {
     
    @State var show = false
    @State var idSelected = 1
    @State var imageSelected = "eksperienca1"
    @State var nameSelected = "Pamje nga Rugova"
    @State var locationSelected = "Peje"
    @State var ratingSelected = 5
    var body : some View{
         
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20){
                 
                ForEach(data){i in
                    VStack(alignment: .leading,spacing: 12){
                        Button(action: {
                            self.show.toggle()
                            self.idSelected = i.id
                            self.imageSelected = i.image
                            self.nameSelected = i.name
                            self.locationSelected = i.location
                            self.ratingSelected = i.rating
                        }) {
                            Image(i.image)
                                .resizable().frame(width: 200, height: 300).cornerRadius(20)
                        }
                        Text(i.name).fontWeight(.heavy)
                        HStack(spacing: 5){
                            Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                            Text(i.location).foregroundColor(.gray)
                        }
                    }
                }
            }
            .sheet(isPresented: $show) {
                Detail(travel: Travelling(id: self.idSelected, name: self.nameSelected, image: self.imageSelected, rating: self.ratingSelected, location: self.locationSelected))
            }
        }
    }
}
 
struct ExperiencesTab_Previews: PreviewProvider {
    static var previews: some View {
        ExperiencesTab()
    }
}
