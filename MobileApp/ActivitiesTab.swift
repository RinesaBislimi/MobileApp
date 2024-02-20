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
                       Image("travelling1")
                           .resizable().frame(width: 200, height: 300).cornerRadius(20)
                   }
                   Text("Wipe-clean").fontWeight(.heavy)
                   HStack(spacing: 5){
                       Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                       Text("Olongapo City").foregroundColor(.gray)
                   }
               }
                
               VStack(alignment: .leading,spacing: 12){
                   Button(action: {
                       self.show.toggle()
                   }) {
                       Image("travelling2")
                           .resizable().frame(width: 200, height: 300).cornerRadius(20)
                   }
                   Text("Family Camping").fontWeight(.heavy)
                   HStack(spacing: 5){
                       Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                       Text("Subic Bay").foregroundColor(.gray)
                   }
               }
                
               VStack(alignment: .leading,spacing: 12){
                   Button(action: {
                       self.show.toggle()
                   }) {
                       Image("travelling3")
                           .resizable().frame(width: 200, height: 300).cornerRadius(20)
                   }
                   Text("Travelling").fontWeight(.heavy)
                   HStack(spacing: 5){
                       Image(systemName: "mappin.and.ellipse").renderingMode(.original)
                       Text("Clark").foregroundColor(.gray)
                   }
               }
           }
       
          
       }
   }
}

struct ActivitiesTab_Previews: PreviewProvider {
   static var previews: some View {
       ActivitiesTab()
   }
}
