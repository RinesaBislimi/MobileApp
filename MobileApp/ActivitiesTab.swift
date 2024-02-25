//
//  ActivitiesTab.swift
//  MobileApp
//
//  Created by Rinesa on 19.2.24.
//


import SwiftUI

struct ActivitiesTab: View {
    @State var show = false
    
    var body : some View{
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20){
                VStack(alignment: .leading,spacing: 12){
                    Button(action: {
                        self.show.toggle()
                    }) {
                        Image("aktivitet1")
                            .resizable().frame(width: 200, height: 300).cornerRadius(20)
                    }
                    Text("Germi").fontWeight(.heavy)
                    HStack(spacing: 5){
                        Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                        Text("Prishtine").foregroundColor(.gray)
                    }
                }
                
                VStack(alignment: .leading,spacing: 12){
                    Button(action: {
                        self.show.toggle()
                    }) {
                        Image("aktivitet2")
                            .resizable().frame(width: 200, height: 300).cornerRadius(20)
                    }
                    Text("Muze").fontWeight(.heavy)
                    HStack(spacing: 5){
                        Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                        Text("Prishtine").foregroundColor(.gray)
                    }
                }
                
                VStack(alignment: .leading,spacing: 12){
                    Button(action: {
                        self.show.toggle()
                    }) {
                        Image("aktivitet3")
                            .resizable().frame(width: 200, height: 300).cornerRadius(20)
                    }
                    
                    Text("Ushqime tradicionale").fontWeight(.heavy)
                    HStack(spacing: 5){
                        Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                        Text("Drenas").foregroundColor(.gray)
                    }
                }
            }
        }.sheet(isPresented: $show) {
            Detail(travel: Travelling(id: 1, name: "Fishing Time", image: "details", rating: 5, location: "Olongapo City"))
        }
    }
}
struct ActivitiesTab_Previews: PreviewProvider {
   static var previews: some View {
       ActivitiesTab()
   }
}
